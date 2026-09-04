class_name FakerEnApp
extends RefCounted

const AUTHOR_DATA = preload("res://addons/faker_gd/locales/en/app/author.gd").DATA
const NAME_DATA = preload("res://addons/faker_gd/locales/en/app/name.gd").DATA
const VERSION_DATA = preload("res://addons/faker_gd/locales/en/app/version.gd").DATA

const DATA = {
	"author": AUTHOR_DATA,
	"name": NAME_DATA,
	"version": VERSION_DATA,
}
