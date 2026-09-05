class_name FakerBook
extends "res://addons/faker_gd/domains/domain.gd"


func author() -> String:
	return _string(&"author")

func format() -> String:
	return _string(&"format")

func genre() -> String:
	return _string(&"genre")

func publisher() -> String:
	return _string(&"publisher")

func series() -> String:
	return _string(&"series")

func title() -> String:
	return _string(&"title")
