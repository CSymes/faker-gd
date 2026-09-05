extends Node

signal locale_changed(locale: String)

const DEFAULT_LOCALE_SETTING := "faker_gd/default_locale"
const FALLBACK_LOCALE := "en"
const Generator = preload("res://addons/faker_gd/faker.gd")
const LocaleRegistry = preload("res://addons/faker_gd/internal/locale_registry.gd")

var _registry: LocaleRegistry
var _default_faker: Faker

var airline: FakerAirline:
	get:
		return _default_faker.airline
var animal: FakerAnimal:
	get:
		return _default_faker.animal
var book: FakerBook:
	get:
		return _default_faker.book
var color: FakerColor:
	get:
		return _default_faker.color
var commerce: FakerCommerce:
	get:
		return _default_faker.commerce
var company: FakerCompany:
	get:
		return _default_faker.company
var database: FakerDatabase:
	get:
		return _default_faker.database
var date: FakerDate:
	get:
		return _default_faker.date
var finance: FakerFinance:
	get:
		return _default_faker.finance
var food: FakerFood:
	get:
		return _default_faker.food
var hacker: FakerHacker:
	get:
		return _default_faker.hacker
var internet: FakerInternet:
	get:
		return _default_faker.internet
var location: FakerLocation:
	get:
		return _default_faker.location
var lorem: FakerLorem:
	get:
		return _default_faker.lorem
var medical: FakerMedical:
	get:
		return _default_faker.medical
var music: FakerMusic:
	get:
		return _default_faker.music
var person: FakerPerson:
	get:
		return _default_faker.person
var science: FakerScience:
	get:
		return _default_faker.science
var system: FakerSystem:
	get:
		return _default_faker.system
var team: FakerTeam:
	get:
		return _default_faker.team
var vehicle: FakerVehicle:
	get:
		return _default_faker.vehicle
var word: FakerWord:
	get:
		return _default_faker.word


func _init() -> void:
	_registry = LocaleRegistry.new()
	var initial_locale: String = String(
		ProjectSettings.get_setting(DEFAULT_LOCALE_SETTING, FALLBACK_LOCALE)
	)
	_default_faker = Generator.new(initial_locale, _registry)
	if _default_faker.get_locale().is_empty() and initial_locale != FALLBACK_LOCALE:
		push_error(
			"Invalid Faker GD default locale '%s'; using '%s'"
			% [initial_locale, FALLBACK_LOCALE]
		)
		_default_faker.set_locale(FALLBACK_LOCALE)
	_default_faker.locale_changed.connect(_on_default_locale_changed)


func create_faker(locale: String = FALLBACK_LOCALE) -> Faker:
	if not _registry.has_selectable_locale(locale):
		push_error("Faker locale '%s' is not available" % locale)
		return null
	return Generator.new(locale, _registry)


func set_locale(locale: String) -> Error:
	return _default_faker.set_locale(locale)


func get_locale() -> String:
	return _default_faker.get_locale()


func get_metadata() -> Dictionary:
	return _default_faker.get_metadata()


func get_available_locales() -> PackedStringArray:
	return _registry.get_available_locales()


func seed(value: int) -> void:
	_default_faker.seed(value)


func randomize() -> void:
	_default_faker.randomize()


func _on_default_locale_changed(locale: String) -> void:
	locale_changed.emit(locale)
