extends RefCounted

const BICYCLE_TYPE_DATA = preload("res://addons/faker_gd/locales/en/vehicle/bicycle_type.gd").DATA
const FUEL_DATA = preload("res://addons/faker_gd/locales/en/vehicle/fuel.gd").DATA
const MANUFACTURER_DATA = preload("res://addons/faker_gd/locales/en/vehicle/manufacturer.gd").DATA
const MODEL_DATA = preload("res://addons/faker_gd/locales/en/vehicle/model.gd").DATA
const TYPE_DATA = preload("res://addons/faker_gd/locales/en/vehicle/type.gd").DATA

const DATA = {
	"bicycle_type": BICYCLE_TYPE_DATA,
	"fuel": FUEL_DATA,
	"manufacturer": MANUFACTURER_DATA,
	"model": MODEL_DATA,
	"type": TYPE_DATA,
}
