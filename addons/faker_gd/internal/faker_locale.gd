extends RefCounted

var _code: StringName
var _metadata: Dictionary
var _parent_codes: Array[StringName] = []
var _data: Dictionary
var _definitions: Dictionary[StringName, Dictionary] = {}
var _selectable: bool = true
var _sealed: bool = false
var _validation_error: String = ""


func _init(
	code: StringName,
	data: Dictionary,
	parent_codes: Array[StringName] = [],
	selectable: bool = true
) -> void:
	_code = code
	_data = data
	_selectable = selectable

	for parent_code: StringName in parent_codes:
		_parent_codes.append(StringName(parent_code))

	var metadata_value: Variant = data.get("metadata", {})
	if typeof(metadata_value) == TYPE_DICTIONARY:
		_metadata = metadata_value
	else:
		_metadata = {}
		_validation_error = "metadata must be a dictionary"

	for category_value: Variant in data.keys():
		var category: String = String(category_value)
		if category == "metadata":
			continue

		var entries: Variant = data[category_value]
		if typeof(entries) != TYPE_DICTIONARY:
			_validation_error = "category '%s' must be a dictionary" % category
			continue

		_definitions[StringName(category)] = entries


func get_code() -> StringName:
	return _code


func get_validation_error() -> String:
	return _validation_error


func get_metadata() -> Dictionary:
	return _metadata


func get_parent_codes() -> Array[StringName]:
	return _parent_codes


func is_selectable() -> bool:
	return _selectable


func has_definition(category: StringName, entry: StringName) -> bool:
	if not _definitions.has(category):
		return false
	return _definitions[category].has(String(entry))


func get_definition(category: StringName, entry: StringName) -> Variant:
	if not _definitions.has(category):
		return null
	return _definitions[category].get(String(entry))


func is_sealed() -> bool:
	return _sealed


func seal() -> void:
	if _sealed:
		return

	_make_read_only(_data)
	_definitions.make_read_only()
	_parent_codes.make_read_only()
	_sealed = true


static func _make_read_only(value: Variant) -> void:
	match typeof(value):
		TYPE_ARRAY:
			for child: Variant in value:
				_make_read_only(child)
			value.make_read_only()
		TYPE_DICTIONARY:
			for child: Variant in value.values():
				_make_read_only(child)
			value.make_read_only()
