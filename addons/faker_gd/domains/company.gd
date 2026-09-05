class_name FakerCompany
extends "res://addons/faker_gd/domains/domain.gd"


func adjective() -> String:
	return _string(&"adjective")

func descriptor() -> String:
	return _string(&"descriptor")

func noun() -> String:
	return _string(&"noun")

func buzz_adjective() -> String:
	return _string(&"buzz_adjective")

func buzz_verb() -> String:
	return _string(&"buzz_verb")

func buzz_noun() -> String:
	return _string(&"buzz_noun")

func legal_entity_type() -> String:
	return _string(&"legal_entity_type")
