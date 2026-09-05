class_name FakerMedical
extends "res://addons/faker_gd/domains/domain.gd"


func allergen() -> String:
	return _string(&"allergen")

func blood_type() -> String:
	return _string(&"blood_type")

func condition() -> String:
	return _string(&"condition")

func department() -> String:
	return _string(&"department")

func drug_name() -> String:
	return _string(&"drug_name")

func procedure() -> String:
	return _string(&"procedure")

func specialty() -> String:
	return _string(&"specialty")

func symptom() -> String:
	return _string(&"symptom")
