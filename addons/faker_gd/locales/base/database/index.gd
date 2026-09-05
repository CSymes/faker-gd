extends RefCounted

const COLLATION_DATA = preload("res://addons/faker_gd/locales/base/database/collation.gd").DATA
const ENGINE_DATA = preload("res://addons/faker_gd/locales/base/database/engine.gd").DATA
const TYPE_DATA = preload("res://addons/faker_gd/locales/base/database/type.gd").DATA

const DATA = {
	"collation": COLLATION_DATA,
	"engine": ENGINE_DATA,
	"type": TYPE_DATA,
}
