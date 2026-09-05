class_name FakerFood
extends "res://addons/faker_gd/domains/domain.gd"


func adjective() -> String:
	return _string(&"adjective")

func ethnic_category() -> String:
	return _string(&"ethnic_category")

func fruit() -> String:
	return _string(&"fruit")

func ingredient() -> String:
	return _string(&"ingredient")

func meat() -> String:
	return _string(&"meat")

func spice() -> String:
	return _string(&"spice")

func vegetable() -> String:
	return _string(&"vegetable")
