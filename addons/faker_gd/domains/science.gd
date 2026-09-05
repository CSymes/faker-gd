class_name FakerScience
extends "res://addons/faker_gd/domains/domain.gd"


func chemical_element() -> Dictionary:
	return _record(&"chemical_element")


func unit() -> Dictionary:
	return _record(&"unit")
