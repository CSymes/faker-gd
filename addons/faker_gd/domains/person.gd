class_name FakerPerson
extends "res://addons/faker_gd/domains/domain.gd"

const FEMALE := "female"
const GENERIC := "generic"
const MALE := "male"


func first_name(sex: String = "") -> String:
	return _person_entry(&"first_name", sex)


func middle_name(sex: String = "") -> String:
	return _person_entry(&"middle_name", sex)


func prefix(sex: String = "") -> String:
	return _person_entry(&"prefix", sex)


func suffix() -> String:
	return _string(&"suffix")


func gender() -> String:
	return _string(&"gender")


func sex() -> String:
	return _string(&"sex")


func sex_type(include_generic: bool = false) -> String:
	var values: Array[String] = [FEMALE, MALE]
	if include_generic:
		values.append(GENERIC)
	var value: Variant = _pick(values, "person sex types")
	return String(value) if value != null else ""


func job_descriptor() -> String:
	return _string(&"job_descriptor")


func job_area() -> String:
	return _string(&"job_area")


func job_type() -> String:
	return _string(&"job_type")


func western_zodiac_sign() -> String:
	return _string(&"western_zodiac_sign")


func _person_entry(key: StringName, requested_sex: String) -> String:
	var definition: Variant = _definition(key)
	if typeof(definition) != TYPE_DICTIONARY:
		if definition != null:
			push_error("Faker definition '%s' must be a dictionary" % _definition_name(key))
		return ""

	var selected_sex: String = requested_sex
	if selected_sex.is_empty():
		selected_sex = sex_type()
	if selected_sex != FEMALE and selected_sex != GENERIC and selected_sex != MALE:
		push_error("Invalid person sex type '%s'" % selected_sex)
		return ""

	var values: Variant = _select_person_values(definition, selected_sex, key)
	if typeof(values) != TYPE_ARRAY:
		return ""
	var value: Variant = _pick(values, _definition_name(key))
	if typeof(value) != TYPE_STRING:
		if value != null:
			push_error("Faker definition '%s' must contain strings" % _definition_name(key))
		return ""
	return value


func _select_person_values(definition: Dictionary, selected_sex: String, key: StringName) -> Variant:
	var generic: Variant = definition.get(GENERIC)
	var female: Variant = definition.get(FEMALE)
	var male: Variant = definition.get(MALE)

	if selected_sex == GENERIC:
		if generic != null:
			return _validated_array(generic, key, GENERIC)
		var binary: Variant = _pick([female, male], "%s binary lists" % _definition_name(key))
		return _validated_array(binary, key, selected_sex)

	var selected_binary: Variant = female if selected_sex == FEMALE else male
	if selected_binary != null:
		selected_binary = _validated_array(selected_binary, key, selected_sex)
		if selected_binary == null:
			return null
		if generic != null:
			generic = _validated_array(generic, key, GENERIC)
			if generic == null:
				return null
			return _runtime.pick_weighted(
				[
					{"value": selected_binary, "weight": 3.0 * sqrt(selected_binary.size())},
					{"value": generic, "weight": sqrt(generic.size())},
				],
				"%s sex-specific lists" % _definition_name(key)
			)
		return selected_binary

	if generic != null:
		return _validated_array(generic, key, GENERIC)

	push_error("Faker definition '%s' has no values for '%s'" % [_definition_name(key), selected_sex])
	return null


func _validated_array(value: Variant, key: StringName, field: String) -> Variant:
	if typeof(value) != TYPE_ARRAY or value.is_empty():
		push_error("Faker definition '%s.%s' must be a non-empty array" % [_definition_name(key), field])
		return null
	return value
