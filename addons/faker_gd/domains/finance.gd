class_name FakerFinance
extends "res://addons/faker_gd/domains/domain.gd"


func account_type() -> String:
	return _string(&"account_type")


func transaction_type() -> String:
	return _string(&"transaction_type")


func currency() -> Dictionary:
	return _record(&"currency")


func currency_code() -> String:
	return String(currency().get("code", ""))


func currency_name() -> String:
	return String(currency().get("name", ""))


func currency_symbol() -> String:
	return String(currency().get("symbol", ""))


func currency_numeric_code() -> String:
	return String(currency().get("numeric_code", ""))
