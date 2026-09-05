class_name FakerDatabase
extends "res://addons/faker_gd/domains/domain.gd"


func column() -> String:
	return _string(&"column")

func type() -> String:
	return _string(&"type")

func collation() -> String:
	return _string(&"collation")

func engine() -> String:
	return _string(&"engine")
