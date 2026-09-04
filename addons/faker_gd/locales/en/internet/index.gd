class_name FakerEnInternet
extends RefCounted

const DOMAIN_SUFFIX_DATA = preload("res://addons/faker_gd/locales/en/internet/domain_suffix.gd").DATA
const EXAMPLE_EMAIL_DATA = preload("res://addons/faker_gd/locales/en/internet/example_email.gd").DATA
const FREE_EMAIL_DATA = preload("res://addons/faker_gd/locales/en/internet/free_email.gd").DATA

const DATA = {
	"domain_suffix": DOMAIN_SUFFIX_DATA,
	"example_email": EXAMPLE_EMAIL_DATA,
	"free_email": FREE_EMAIL_DATA,
}
