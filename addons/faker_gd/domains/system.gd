class_name FakerSystem
extends "res://addons/faker_gd/domains/domain.gd"


func directory_path() -> String:
	return _string(&"directory_path")


func mime_type() -> String:
	var definition: Variant = _definition(&"mime_type")
	if typeof(definition) != TYPE_DICTIONARY or definition.is_empty():
		if definition != null:
			push_error("Faker definition 'system.mime_type' must be a non-empty dictionary")
		return ""
	var keys: Array = definition.keys()
	var value: Variant = _pick(keys, "system.mime_type keys")
	return String(value) if value != null else ""


func file_extension(mime: String = "") -> String:
	var definition: Variant = _definition(&"mime_type")
	if typeof(definition) != TYPE_DICTIONARY or definition.is_empty():
		if definition != null:
			push_error("Faker definition 'system.mime_type' must be a non-empty dictionary")
		return ""

	var selected_mime: String = mime
	if selected_mime.is_empty():
		var keys: Array = definition.keys()
		var selected: Variant = _pick(keys, "system.mime_type keys")
		if selected == null:
			return ""
		selected_mime = String(selected)
	if not definition.has(selected_mime):
		push_error("Unknown MIME type '%s'" % selected_mime)
		return ""

	var record: Variant = definition[selected_mime]
	if typeof(record) != TYPE_DICTIONARY or typeof(record.get("extensions")) != TYPE_ARRAY:
		push_error("Faker MIME type '%s' has no extension list" % selected_mime)
		return ""
	var extension: Variant = _pick(record["extensions"], "extensions for %s" % selected_mime)
	return String(extension) if extension != null else ""
