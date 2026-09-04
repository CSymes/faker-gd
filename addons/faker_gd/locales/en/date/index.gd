class_name FakerEnDate
extends RefCounted

const MONTH_DATA = preload("res://addons/faker_gd/locales/en/date/month.gd").DATA
const WEEKDAY_DATA = preload("res://addons/faker_gd/locales/en/date/weekday.gd").DATA

const DATA = {
	"month": MONTH_DATA,
	"weekday": WEEKDAY_DATA,
}
