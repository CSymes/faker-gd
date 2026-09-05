class_name FakerMusic
extends "res://addons/faker_gd/domains/domain.gd"


func album() -> String:
	return _string(&"album")

func artist() -> String:
	return _string(&"artist")

func genre() -> String:
	return _string(&"genre")

func song_name() -> String:
	return _string(&"song_name")
