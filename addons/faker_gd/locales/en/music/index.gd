class_name FakerEnMusic
extends RefCounted

const ALBUM_DATA = preload("res://addons/faker_gd/locales/en/music/album.gd").DATA
const ARTIST_DATA = preload("res://addons/faker_gd/locales/en/music/artist.gd").DATA
const GENRE_DATA = preload("res://addons/faker_gd/locales/en/music/genre.gd").DATA
const SONG_NAME_DATA = preload("res://addons/faker_gd/locales/en/music/song_name.gd").DATA

const DATA = {
	"album": ALBUM_DATA,
	"artist": ARTIST_DATA,
	"genre": GENRE_DATA,
	"song_name": SONG_NAME_DATA,
}
