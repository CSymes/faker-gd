extends RefCounted

var found: bool
var locale_code: StringName
var value: Variant


func _init(was_found: bool, source_locale: StringName = &"", definition: Variant = null) -> void:
	found = was_found
	locale_code = source_locale
	value = definition
