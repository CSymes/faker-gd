extends SceneTree

const Generator = preload("res://addons/faker_gd/faker.gd")
const FakerGdFacade = preload("res://addons/faker_gd/faker_gd.gd")
const DefinitionResult = preload("res://addons/faker_gd/internal/definition_result.gd")
const FakerLocale = preload("res://addons/faker_gd/internal/faker_locale.gd")
const LocaleRegistry = preload("res://addons/faker_gd/internal/locale_registry.gd")
const Runtime = preload("res://addons/faker_gd/internal/faker_runtime.gd")

var _failures: PackedStringArray = []


func _initialize() -> void:
	_test_autoload_api()
	_test_seeded_generators()
	_test_base_fallback()
	_test_atomic_fallback_and_retained_domain()
	_test_unknown_locale_is_atomic()
	_test_returned_records_are_copies()
	_test_direct_domains()

	if _failures.is_empty():
		print("Faker GD tests passed")
		quit(0)
		return

	for failure in _failures:
		printerr("FAILED: %s" % failure)
	quit(1)


func _test_autoload_api() -> void:
	var facade: FakerGdFacade = get_root().get_node_or_null("FakerGd") as FakerGdFacade
	_expect(facade != null, "FakerGd autoload exists")
	if facade == null:
		return
	_expect(facade.get_locale() == "en", "autoload starts with the project default locale")
	_expect(facade.get_available_locales() == PackedStringArray(["en"]), "base is not selectable")
	_expect(not facade.person.first_name().is_empty(), "autoload person API generates a first name")


func _test_seeded_generators() -> void:
	var first: Faker = Generator.new()
	var second: Faker = Generator.new()
	first.seed(123456)
	second.seed(123456)
	var first_values: Array[String] = [
		first.person.first_name(),
		first.animal.cat(),
		first.finance.currency_code(),
	]
	var second_values: Array[String] = [
		second.person.first_name(),
		second.animal.cat(),
		second.finance.currency_code(),
	]
	_expect(first_values == second_values, "equal seeds produce equal values")

	first.seed(77)
	var original: String = first.person.first_name()
	first.seed(77)
	_expect(first.person.first_name() == original, "reseeding restarts the random stream")


func _test_base_fallback() -> void:
	var faker: Faker = Generator.new()
	_expect(not faker.hacker.abbreviation().is_empty(), "English resolves hacker abbreviations from base")
	_expect(not faker.color.space().is_empty(), "English resolves colour spaces from base")
	_expect(not faker.internet.emoji().is_empty(), "English resolves emoji from base")


func _test_atomic_fallback_and_retained_domain() -> void:
	var registry: LocaleRegistry = LocaleRegistry.new()
	var custom_data: Dictionary = {
		"metadata": {"title": "Test", "code": "test"},
		"person": {
			"first_name": {"female": ["Custom"]},
			"suffix": null,
		},
	}
	var locale: FakerLocale = FakerLocale.new(&"test", custom_data, [&"en"])
	_expect(registry.register_locale(locale) == OK, "a valid internal locale registers")

	var runtime: Runtime = Runtime.new(registry)
	_expect(runtime.set_locale("test") == OK, "a registered locale can be selected")
	var definition: Variant = runtime.resolve_definition(&"person", &"first_name")
	_expect(typeof(definition) == TYPE_DICTIONARY, "custom atomic definition resolves")
	if typeof(definition) == TYPE_DICTIONARY:
		_expect(not definition.has("generic"), "nested values are not deep-merged from English")
	var null_result: DefinitionResult = runtime.find_definition(&"person", &"suffix")
	_expect(null_result.found and null_result.value == null, "explicit null blocks fallback")
	_expect(null_result.locale_code == &"test", "explicit null is attributed to the selected locale")

	var faker: Faker = Generator.new("en", registry)
	var retained_person: FakerPerson = faker.person
	_expect(faker.set_locale("test") == OK, "generator changes to a registered locale")
	_expect(retained_person.first_name("female") == "Custom", "retained domains follow locale changes")


func _test_unknown_locale_is_atomic() -> void:
	var faker: Faker = Generator.new()
	var previous: String = faker.get_locale()
	_expect(faker.set_locale("missing") == ERR_DOES_NOT_EXIST, "unknown locale returns ERR_DOES_NOT_EXIST")
	_expect(faker.get_locale() == previous, "failed locale changes retain the previous locale")


func _test_returned_records_are_copies() -> void:
	var faker: Faker = Generator.new()
	faker.seed(42)
	var record: Dictionary = faker.finance.currency()
	var original_code: String = String(record.get("code", ""))
	record["code"] = "CHANGED"
	faker.seed(42)
	var repeated: Dictionary = faker.finance.currency()
	_expect(repeated.get("code", "") == original_code, "returned records do not expose locale data")


func _test_direct_domains() -> void:
	var faker: Faker = Generator.new()
	_expect(not faker.airline.airport().is_empty(), "airline records are available")
	_expect(not faker.book.title().is_empty(), "book values are available")
	_expect(not faker.commerce.product().is_empty(), "nested commerce values are available")
	_expect(not faker.date.month().is_empty(), "date values are available")
	_expect(not faker.location.country().is_empty(), "location values are available")
	_expect(not faker.medical.condition().is_empty(), "medical values are available")
	_expect(not faker.science.chemical_element().is_empty(), "science records are available")
	_expect(not faker.system.mime_type().is_empty(), "system dictionaries are available")
	_expect(not faker.vehicle.manufacturer().is_empty(), "vehicle values are available")
	_expect(not faker.word.noun().is_empty(), "word values are available")


func _expect(condition: bool, description: String) -> void:
	if not condition:
		_failures.append(description)
