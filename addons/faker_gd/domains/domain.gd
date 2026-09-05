extends RefCounted

const Runtime = preload("res://addons/faker_gd/internal/faker_runtime.gd")

var _runtime: Runtime
var _category: StringName


func _init(runtime: Runtime, category: StringName) -> void:
	_runtime = runtime
	_category = category


func _string(entry: StringName) -> String:
	return _runtime.random_string(_category, entry)


func _record(entry: StringName) -> Dictionary:
	return _runtime.random_record(_category, entry)


func _definition(entry: StringName) -> Variant:
	return _runtime.resolve_definition(_category, entry)


func _pick(values: Array, description: String) -> Variant:
	return _runtime.pick_array_element(values, description)


func _definition_name(entry: StringName) -> String:
	return "%s.%s" % [String(_category), String(entry)]


func _nested_string(entry: StringName, field: StringName) -> String:
	var definition_name: String = _definition_name(entry)
	var definition: Variant = _definition(entry)
	if typeof(definition) != TYPE_DICTIONARY:
		if definition != null:
			push_error("Faker definition '%s' must be a dictionary" % definition_name)
		return ""
	if not definition.has(field) or typeof(definition[field]) != TYPE_ARRAY:
		push_error("Faker definition '%s.%s' must be an array" % [definition_name, String(field)])
		return ""
	var value: Variant = _pick(definition[field], "%s.%s" % [definition_name, String(field)])
	if typeof(value) != TYPE_STRING:
		if value != null:
			push_error(
				"Faker definition '%s.%s' must contain strings"
				% [definition_name, String(field)]
			)
		return ""
	return value
