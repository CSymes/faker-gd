class_name FakerHacker
extends "res://addons/faker_gd/domains/domain.gd"


func abbreviation() -> String:
	return _string(&"abbreviation")

func adjective() -> String:
	return _string(&"adjective")

func ingverb() -> String:
	return _string(&"ingverb")

func noun() -> String:
	return _string(&"noun")

func verb() -> String:
	return _string(&"verb")
