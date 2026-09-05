class_name FakerCommerce
extends "res://addons/faker_gd/domains/domain.gd"


func department() -> String:
	return _string(&"department")


func product_adjective() -> String:
	return _nested_string(&"product_name", &"adjective")


func product_material() -> String:
	return _nested_string(&"product_name", &"material")


func product() -> String:
	return _nested_string(&"product_name", &"product")
