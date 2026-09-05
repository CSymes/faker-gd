class_name FakerDate
extends "res://addons/faker_gd/domains/domain.gd"


func month(abbreviated: bool = false) -> String:
	return _nested_string(&"month", &"abbr" if abbreviated else &"wide")


func weekday(abbreviated: bool = false) -> String:
	return _nested_string(&"weekday", &"abbr" if abbreviated else &"wide")


func time_zone() -> String:
	return _string(&"time_zone")
