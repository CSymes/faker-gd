@tool
extends EditorPlugin

const AUTOLOAD_NAME = "FakerGd"

func _enable_plugin() -> void:
	add_autoload_singleton(AUTOLOAD_NAME, "res://addons/faker_gd/faker.gd")

func _disable_plugin() -> void:
	remove_autoload_singleton(AUTOLOAD_NAME)
