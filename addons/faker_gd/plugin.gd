@tool
extends EditorPlugin

const AUTOLOAD_NAME = "FakerGd"
const AUTOLOAD_PATH = "res://addons/faker_gd/faker_gd.gd"
const DEFAULT_LOCALE_SETTING = "faker_gd/default_locale"


func _enter_tree() -> void:
	_register_project_settings()


func _enable_plugin() -> void:
	_register_project_settings()
	add_autoload_singleton(AUTOLOAD_NAME, AUTOLOAD_PATH)


func _disable_plugin() -> void:
	remove_autoload_singleton(AUTOLOAD_NAME)


func _register_project_settings() -> void:
	var setting_was_added: bool = false
	if not ProjectSettings.has_setting(DEFAULT_LOCALE_SETTING):
		ProjectSettings.set_setting(DEFAULT_LOCALE_SETTING, "en")
		setting_was_added = true
	ProjectSettings.set_initial_value(DEFAULT_LOCALE_SETTING, "en")
	ProjectSettings.add_property_info(
		{
			"name": DEFAULT_LOCALE_SETTING,
			"type": TYPE_STRING,
		}
	)
	if setting_was_added:
		ProjectSettings.save()
