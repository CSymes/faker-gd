class_name FakerVehicle
extends "res://addons/faker_gd/domains/domain.gd"


func bicycle_type() -> String:
	return _string(&"bicycle_type")

func fuel() -> String:
	return _string(&"fuel")

func manufacturer() -> String:
	return _string(&"manufacturer")

func model() -> String:
	return _string(&"model")

func type() -> String:
	return _string(&"type")
