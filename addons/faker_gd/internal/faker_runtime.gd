extends RefCounted

const DefinitionResult = preload("res://addons/faker_gd/internal/definition_result.gd")
const FakerLocale = preload("res://addons/faker_gd/internal/faker_locale.gd")
const LocaleRegistry = preload("res://addons/faker_gd/internal/locale_registry.gd")

var _registry: LocaleRegistry
var _locale_code: String = ""
var _locale_chain: Array[FakerLocale] = []
var _rng: RandomNumberGenerator = RandomNumberGenerator.new()


func _init(registry: LocaleRegistry) -> void:
	_registry = registry
	_rng.randomize()


func set_locale(code: String) -> Error:
	var chain: Array[FakerLocale] = _registry.build_chain(code)
	if chain.is_empty():
		return ERR_DOES_NOT_EXIST

	_locale_code = code
	_locale_chain = chain
	return OK


func get_locale() -> String:
	return _locale_code


func get_metadata() -> Dictionary:
	if _locale_chain.is_empty():
		return {}
	return _locale_chain[0].get_metadata().duplicate(true)


func seed(value: int) -> void:
	_rng.seed = value


func randomize() -> void:
	_rng.randomize()


func find_definition(category: StringName, entry: StringName) -> DefinitionResult:
	for locale: FakerLocale in _locale_chain:
		if locale.has_definition(category, entry):
			return DefinitionResult.new(
				true,
				locale.get_code(),
				locale.get_definition(category, entry)
			)
	return DefinitionResult.new(false)


func resolve_definition(category: StringName, entry: StringName) -> Variant:
	var definition_name: String = _definition_name(category, entry)
	var result: DefinitionResult = find_definition(category, entry)
	if not result.found:
		push_error(
			"Faker definition '%s' is missing from locale chain '%s'"
			% [definition_name, _locale_chain_description()]
		)
		return null
	if result.value == null:
		push_error(
			"Faker definition '%s' is not applicable to locale '%s'"
			% [definition_name, String(result.locale_code)]
		)
	return result.value


func random_element(category: StringName, entry: StringName) -> Variant:
	var definition_name: String = _definition_name(category, entry)
	var definition: Variant = resolve_definition(category, entry)
	if definition == null:
		return null
	if typeof(definition) != TYPE_ARRAY:
		push_error("Faker definition '%s' must be an array" % definition_name)
		return null
	return pick_array_element(definition, definition_name)


func random_string(category: StringName, entry: StringName) -> String:
	var definition_name: String = _definition_name(category, entry)
	var value: Variant = random_element(category, entry)
	if typeof(value) != TYPE_STRING:
		if value != null:
			push_error("Faker definition '%s' must contain strings" % definition_name)
		return ""
	return value


func random_record(category: StringName, entry: StringName) -> Dictionary:
	var definition_name: String = _definition_name(category, entry)
	var value: Variant = random_element(category, entry)
	if typeof(value) != TYPE_DICTIONARY:
		if value != null:
			push_error("Faker definition '%s' must contain dictionaries" % definition_name)
		return {}
	return value.duplicate(true)


func pick_array_element(values: Array, description: String = "array") -> Variant:
	if values.is_empty():
		push_error("Cannot select from empty Faker %s" % description)
		return null
	return values[_rng.randi_range(0, values.size() - 1)]


func pick_weighted(entries: Array, description: String = "weighted array") -> Variant:
	if entries.is_empty():
		push_error("Cannot select from empty Faker %s" % description)
		return null

	var total: float = 0.0
	for entry: Variant in entries:
		if typeof(entry) != TYPE_DICTIONARY or not entry.has("value") or not entry.has("weight"):
			push_error("Faker %s must contain value/weight dictionaries" % description)
			return null

		var weight_value: Variant = entry["weight"]
		if typeof(weight_value) != TYPE_INT and typeof(weight_value) != TYPE_FLOAT:
			push_error("Faker %s weights must be numeric" % description)
			return null
		var weight: float = float(weight_value)
		if weight <= 0.0 or is_inf(weight) or is_nan(weight):
			push_error("Faker %s weights must be finite and positive" % description)
			return null
		total += weight

	var target: float = _rng.randf() * total
	var current: float = 0.0
	for entry: Dictionary in entries:
		current += float(entry["weight"])
		if target < current:
			return entry["value"]
	return entries[-1]["value"]


static func _definition_name(category: StringName, entry: StringName) -> String:
	return "%s.%s" % [String(category), String(entry)]


func _locale_chain_description() -> String:
	var codes: PackedStringArray = PackedStringArray()
	for locale: FakerLocale in _locale_chain:
		codes.append(String(locale.get_code()))
	return " -> ".join(codes)
