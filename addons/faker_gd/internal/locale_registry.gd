extends RefCounted

const FakerLocale = preload("res://addons/faker_gd/internal/faker_locale.gd")
const BASE_DATA = preload("res://addons/faker_gd/locales/base/index.gd").DATA
const EN_DATA = preload("res://addons/faker_gd/locales/en/index.gd").DATA

var _locales: Dictionary[StringName, FakerLocale] = {}


func _init() -> void:
	var error: Error = register_locale(FakerLocale.new(&"base", BASE_DATA, [], false))
	if error != OK:
		push_error("Failed to register the Faker GD base locale")
		return

	error = register_locale(FakerLocale.new(&"en", EN_DATA, [&"base"], true))
	if error != OK:
		push_error("Failed to register the Faker GD English locale")


func register_locale(locale: FakerLocale) -> Error:
	if locale == null:
		push_error("Cannot register a null Faker locale")
		return ERR_INVALID_PARAMETER

	var code: StringName = locale.get_code()
	if not _is_valid_code(String(code)):
		push_error("Invalid Faker locale code '%s'" % String(code))
		return ERR_INVALID_PARAMETER
	if _locales.has(code):
		push_error("Faker locale '%s' is already registered" % String(code))
		return ERR_ALREADY_EXISTS

	var validation_error: String = locale.get_validation_error()
	if not validation_error.is_empty():
		push_error("Invalid Faker locale '%s': %s" % [String(code), validation_error])
		return ERR_INVALID_DATA

	for parent_code: StringName in locale.get_parent_codes():
		if not _locales.has(parent_code):
			push_error(
				"Cannot register Faker locale '%s': parent '%s' is not registered"
				% [String(code), String(parent_code)]
			)
			return ERR_DOES_NOT_EXIST

	var metadata: Dictionary = locale.get_metadata()
	if String(metadata.get("code", "")) != String(code):
		push_error("Faker locale '%s' has mismatched metadata" % String(code))
		return ERR_INVALID_DATA

	locale.seal()
	_locales[code] = locale
	return OK


func has_selectable_locale(code: String) -> bool:
	var locale: FakerLocale = _locales.get(StringName(code))
	return locale != null and locale.is_selectable()


func build_chain(code: String) -> Array[FakerLocale]:
	var locale_code: StringName = StringName(code)
	var selected: FakerLocale = _locales.get(locale_code)
	if selected == null or not selected.is_selectable():
		return []

	var chain: Array[FakerLocale] = []
	var visited: Dictionary[StringName, bool] = {}
	if not _append_locale(locale_code, chain, visited):
		return []
	return chain


func get_available_locales() -> PackedStringArray:
	var codes: PackedStringArray = PackedStringArray()
	for code: StringName in _locales:
		if _locales[code].is_selectable():
			codes.append(String(code))
	codes.sort()
	return codes


func _append_locale(
	code: StringName,
	chain: Array[FakerLocale],
	visited: Dictionary[StringName, bool]
) -> bool:
	if visited.has(code):
		return true

	var locale: FakerLocale = _locales.get(code)
	if locale == null:
		push_error("Missing Faker fallback locale '%s'" % String(code))
		return false

	visited[code] = true
	chain.append(locale)
	for parent_code: StringName in locale.get_parent_codes():
		if not _append_locale(parent_code, chain, visited):
			return false
	return true


static func _is_valid_code(code: String) -> bool:
	if code.is_empty():
		return false
	for index: int in code.length():
		var character: String = code.substr(index, 1)
		if not (
			(character >= "a" and character <= "z")
			or (character >= "A" and character <= "Z")
			or (character >= "0" and character <= "9")
			or character == "_"
		):
			return false
	return true
