class_name FakerWord
extends "res://addons/faker_gd/domains/domain.gd"


func adjective() -> String:
	return _string(&"adjective")

func adverb() -> String:
	return _string(&"adverb")

func conjunction() -> String:
	return _string(&"conjunction")

func interjection() -> String:
	return _string(&"interjection")

func noun() -> String:
	return _string(&"noun")

func preposition() -> String:
	return _string(&"preposition")

func verb() -> String:
	return _string(&"verb")
