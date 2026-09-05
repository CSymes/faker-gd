class_name FakerInternet
extends "res://addons/faker_gd/domains/domain.gd"


func domain_suffix() -> String:
	return _string(&"domain_suffix")


func free_email_provider() -> String:
	return _string(&"free_email")


func example_email_provider() -> String:
	return _string(&"example_email")


func jwt_algorithm() -> String:
	return _string(&"jwt_algorithm")


func emoji(category: String = "") -> String:
	var value: Variant = _pick_dictionary_array(&"emoji", category)
	if typeof(value) != TYPE_STRING:
		if value != null:
			push_error("Faker emoji definitions must contain strings")
		return ""
	return value


func http_status_code(category: String = "") -> int:
	var value: Variant = _pick_dictionary_array(&"http_status_code", category)
	if typeof(value) != TYPE_INT:
		if value != null:
			push_error("Faker HTTP status definitions must contain integers")
		return 0
	return value


func _pick_dictionary_array(key: StringName, requested_category: String) -> Variant:
	var definition: Variant = _definition(key)
	if typeof(definition) != TYPE_DICTIONARY or definition.is_empty():
		if definition != null:
			push_error("Faker definition '%s' must be a non-empty dictionary" % String(key))
		return null

	var category: String = requested_category
	if category.is_empty():
		var selected: Variant = _pick(definition.keys(), "%s categories" % String(key))
		if selected == null:
			return null
		category = String(selected)
	if not definition.has(category):
		push_error("Unknown category '%s' for Faker definition '%s'" % [category, String(key)])
		return null

	var values: Variant = definition[category]
	if typeof(values) != TYPE_ARRAY:
		push_error("Faker definition '%s.%s' must be an array" % [String(key), category])
		return null
	return _pick(values, "%s.%s" % [String(key), category])
