extends RefCounted

const AUTHOR_DATA = preload("res://addons/faker_gd/locales/en/book/author.gd").DATA
const FORMAT_DATA = preload("res://addons/faker_gd/locales/en/book/format.gd").DATA
const GENRE_DATA = preload("res://addons/faker_gd/locales/en/book/genre.gd").DATA
const PUBLISHER_DATA = preload("res://addons/faker_gd/locales/en/book/publisher.gd").DATA
const SERIES_DATA = preload("res://addons/faker_gd/locales/en/book/series.gd").DATA
const TITLE_DATA = preload("res://addons/faker_gd/locales/en/book/title.gd").DATA

const DATA = {
	"author": AUTHOR_DATA,
	"format": FORMAT_DATA,
	"genre": GENRE_DATA,
	"publisher": PUBLISHER_DATA,
	"series": SERIES_DATA,
	"title": TITLE_DATA,
}
