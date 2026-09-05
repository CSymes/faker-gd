class_name FakerAirline
extends "res://addons/faker_gd/domains/domain.gd"


func airline() -> Dictionary:
	return _record(&"airline")


func airplane() -> Dictionary:
	return _record(&"airplane")


func airport() -> Dictionary:
	return _record(&"airport")
