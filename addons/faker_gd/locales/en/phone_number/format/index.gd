class_name FakerEnPhoneNumberFormat
extends RefCounted

const HUMAN_DATA = preload("res://addons/faker_gd/locales/en/phone_number/format/human.gd").DATA
const INTERNATIONAL_DATA = preload("res://addons/faker_gd/locales/en/phone_number/format/international.gd").DATA
const MOBILE_DATA = preload("res://addons/faker_gd/locales/en/phone_number/format/mobile.gd").DATA
const NATIONAL_DATA = preload("res://addons/faker_gd/locales/en/phone_number/format/national.gd").DATA

const DATA = {
	"human": HUMAN_DATA,
	"international": INTERNATIONAL_DATA,
	"mobile": MOBILE_DATA,
	"national": NATIONAL_DATA,
}
