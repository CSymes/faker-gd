class_name FakerLocation
extends "res://addons/faker_gd/domains/domain.gd"


func continent() -> String:
	return _string(&"continent")


func country() -> String:
	return _string(&"country")


func county() -> String:
	return _string(&"county")


func state(abbreviated: bool = false) -> String:
	return _string(&"state_abbr" if abbreviated else &"state")


func state_abbreviation() -> String:
	return _string(&"state_abbr")


func street_suffix() -> String:
	return _string(&"street_suffix")


func time_zone() -> String:
	return _string(&"time_zone")


func language() -> Dictionary:
	return _record(&"language")


func country_code(format: String = "alpha2") -> String:
	if format != "alpha2" and format != "alpha3" and format != "numeric":
		push_error("Country-code format must be 'alpha2', 'alpha3', or 'numeric'")
		return ""
	var record: Dictionary = _record(&"country_code")
	return String(record.get(format, ""))


func direction(abbreviated: bool = false) -> String:
	var definition: Variant = _direction_definition()
	if definition == null:
		return ""
	var values: Array = []
	var suffix: String = "_abbr" if abbreviated else ""
	for field in ["cardinal%s" % suffix, "ordinal%s" % suffix]:
		if typeof(definition.get(field)) != TYPE_ARRAY:
			push_error("Faker definition 'location.direction.%s' must be an array" % field)
			return ""
		values.append_array(definition[field])
	return _picked_direction(values, "direction")


func cardinal_direction(abbreviated: bool = false) -> String:
	var field: StringName = &"cardinal_abbr" if abbreviated else &"cardinal"
	return _nested_string(&"direction", field)


func ordinal_direction(abbreviated: bool = false) -> String:
	var field: StringName = &"ordinal_abbr" if abbreviated else &"ordinal"
	return _nested_string(&"direction", field)


func _direction_definition() -> Variant:
	var definition: Variant = _definition(&"direction")
	if typeof(definition) != TYPE_DICTIONARY:
		if definition != null:
			push_error("Faker definition 'location.direction' must be a dictionary")
		return null
	return definition


func _picked_direction(values: Array, description: String) -> String:
	var value: Variant = _pick(values, description)
	if typeof(value) != TYPE_STRING:
		if value != null:
			push_error("Faker %s must contain strings" % description)
		return ""
	return value
