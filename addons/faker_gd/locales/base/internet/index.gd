extends RefCounted

const EMOJI_DATA = preload("res://addons/faker_gd/locales/base/internet/emoji.gd").DATA
const HTTP_STATUS_CODE_DATA = preload("res://addons/faker_gd/locales/base/internet/http_status_code.gd").DATA
const JWT_ALGORITHM_DATA = preload("res://addons/faker_gd/locales/base/internet/jwt_algorithm.gd").DATA
const USER_AGENT_PATTERN_DATA = preload("res://addons/faker_gd/locales/base/internet/user_agent_pattern.gd").DATA

const DATA = {
	"emoji": EMOJI_DATA,
	"http_status_code": HTTP_STATUS_CODE_DATA,
	"jwt_algorithm": JWT_ALGORITHM_DATA,
	"user_agent_pattern": USER_AGENT_PATTERN_DATA,
}
