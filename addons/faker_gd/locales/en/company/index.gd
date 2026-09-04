class_name FakerEnCompany
extends RefCounted

const ADJECTIVE_DATA = preload("res://addons/faker_gd/locales/en/company/adjective.gd").DATA
const BUZZ_ADJECTIVE_DATA = preload("res://addons/faker_gd/locales/en/company/buzz_adjective.gd").DATA
const BUZZ_NOUN_DATA = preload("res://addons/faker_gd/locales/en/company/buzz_noun.gd").DATA
const BUZZ_VERB_DATA = preload("res://addons/faker_gd/locales/en/company/buzz_verb.gd").DATA
const DESCRIPTOR_DATA = preload("res://addons/faker_gd/locales/en/company/descriptor.gd").DATA
const LEGAL_ENTITY_TYPE_DATA = preload("res://addons/faker_gd/locales/en/company/legal_entity_type.gd").DATA
const NAME_PATTERN_DATA = preload("res://addons/faker_gd/locales/en/company/name_pattern.gd").DATA
const NOUN_DATA = preload("res://addons/faker_gd/locales/en/company/noun.gd").DATA

const DATA = {
	"adjective": ADJECTIVE_DATA,
	"buzz_adjective": BUZZ_ADJECTIVE_DATA,
	"buzz_noun": BUZZ_NOUN_DATA,
	"buzz_verb": BUZZ_VERB_DATA,
	"descriptor": DESCRIPTOR_DATA,
	"legal_entity_type": LEGAL_ENTITY_TYPE_DATA,
	"name_pattern": NAME_PATTERN_DATA,
	"noun": NOUN_DATA,
}
