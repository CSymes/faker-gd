class_name Faker
extends RefCounted

signal locale_changed(locale: String)

const LocaleRegistry = preload("res://addons/faker_gd/internal/locale_registry.gd")
const Runtime = preload("res://addons/faker_gd/internal/faker_runtime.gd")
const Airline = preload("res://addons/faker_gd/domains/airline.gd")
const Animal = preload("res://addons/faker_gd/domains/animal.gd")
const Book = preload("res://addons/faker_gd/domains/book.gd")
const ColorDomain = preload("res://addons/faker_gd/domains/color.gd")
const Commerce = preload("res://addons/faker_gd/domains/commerce.gd")
const Company = preload("res://addons/faker_gd/domains/company.gd")
const Database = preload("res://addons/faker_gd/domains/database.gd")
const DateDomain = preload("res://addons/faker_gd/domains/date.gd")
const Finance = preload("res://addons/faker_gd/domains/finance.gd")
const Food = preload("res://addons/faker_gd/domains/food.gd")
const Hacker = preload("res://addons/faker_gd/domains/hacker.gd")
const Internet = preload("res://addons/faker_gd/domains/internet.gd")
const Location = preload("res://addons/faker_gd/domains/location.gd")
const Lorem = preload("res://addons/faker_gd/domains/lorem.gd")
const Medical = preload("res://addons/faker_gd/domains/medical.gd")
const Music = preload("res://addons/faker_gd/domains/music.gd")
const Person = preload("res://addons/faker_gd/domains/person.gd")
const Science = preload("res://addons/faker_gd/domains/science.gd")
const SystemDomain = preload("res://addons/faker_gd/domains/system.gd")
const Team = preload("res://addons/faker_gd/domains/team.gd")
const Vehicle = preload("res://addons/faker_gd/domains/vehicle.gd")
const Word = preload("res://addons/faker_gd/domains/word.gd")

var _registry: LocaleRegistry
var _runtime: Runtime
var _airline: FakerAirline
var _animal: FakerAnimal
var _book: FakerBook
var _color: FakerColor
var _commerce: FakerCommerce
var _company: FakerCompany
var _database: FakerDatabase
var _date: FakerDate
var _finance: FakerFinance
var _food: FakerFood
var _hacker: FakerHacker
var _internet: FakerInternet
var _location: FakerLocation
var _lorem: FakerLorem
var _medical: FakerMedical
var _music: FakerMusic
var _person: FakerPerson
var _science: FakerScience
var _system: FakerSystem
var _team: FakerTeam
var _vehicle: FakerVehicle
var _word: FakerWord

var airline: FakerAirline:
	get:
		return _airline
var animal: FakerAnimal:
	get:
		return _animal
var book: FakerBook:
	get:
		return _book
var color: FakerColor:
	get:
		return _color
var commerce: FakerCommerce:
	get:
		return _commerce
var company: FakerCompany:
	get:
		return _company
var database: FakerDatabase:
	get:
		return _database
var date: FakerDate:
	get:
		return _date
var finance: FakerFinance:
	get:
		return _finance
var food: FakerFood:
	get:
		return _food
var hacker: FakerHacker:
	get:
		return _hacker
var internet: FakerInternet:
	get:
		return _internet
var location: FakerLocation:
	get:
		return _location
var lorem: FakerLorem:
	get:
		return _lorem
var medical: FakerMedical:
	get:
		return _medical
var music: FakerMusic:
	get:
		return _music
var person: FakerPerson:
	get:
		return _person
var science: FakerScience:
	get:
		return _science
var system: FakerSystem:
	get:
		return _system
var team: FakerTeam:
	get:
		return _team
var vehicle: FakerVehicle:
	get:
		return _vehicle
var word: FakerWord:
	get:
		return _word


func _init(locale: String = "en", registry: LocaleRegistry = null) -> void:
	_registry = registry if registry != null else LocaleRegistry.new()
	_runtime = Runtime.new(_registry)

	_airline = Airline.new(_runtime, &"airline")
	_animal = Animal.new(_runtime, &"animal")
	_book = Book.new(_runtime, &"book")
	_color = ColorDomain.new(_runtime, &"color")
	_commerce = Commerce.new(_runtime, &"commerce")
	_company = Company.new(_runtime, &"company")
	_database = Database.new(_runtime, &"database")
	_date = DateDomain.new(_runtime, &"date")
	_finance = Finance.new(_runtime, &"finance")
	_food = Food.new(_runtime, &"food")
	_hacker = Hacker.new(_runtime, &"hacker")
	_internet = Internet.new(_runtime, &"internet")
	_location = Location.new(_runtime, &"location")
	_lorem = Lorem.new(_runtime, &"lorem")
	_medical = Medical.new(_runtime, &"medical")
	_music = Music.new(_runtime, &"music")
	_person = Person.new(_runtime, &"person")
	_science = Science.new(_runtime, &"science")
	_system = SystemDomain.new(_runtime, &"system")
	_team = Team.new(_runtime, &"team")
	_vehicle = Vehicle.new(_runtime, &"vehicle")
	_word = Word.new(_runtime, &"word")

	var error: Error = _runtime.set_locale(locale)
	if error != OK:
		push_error("Unable to initialise Faker with locale '%s'" % locale)


func set_locale(locale: String) -> Error:
	var previous_locale: String = _runtime.get_locale()
	var error: Error = _runtime.set_locale(locale)
	if error != OK:
		return error
	if locale != previous_locale:
		locale_changed.emit(locale)
	return OK


func get_locale() -> String:
	return _runtime.get_locale()


func get_metadata() -> Dictionary:
	return _runtime.get_metadata()


func get_available_locales() -> PackedStringArray:
	return _registry.get_available_locales()


func seed(value: int) -> void:
	_runtime.seed(value)


func randomize() -> void:
	_runtime.randomize()
