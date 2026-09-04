class_name FakerEnPerson
extends RefCounted

const BIO_PART_DATA = preload("res://addons/faker_gd/locales/en/person/bio_part.gd").DATA
const BIO_PATTERN_DATA = preload("res://addons/faker_gd/locales/en/person/bio_pattern.gd").DATA
const BIO_SUPPORTER_DATA = preload("res://addons/faker_gd/locales/en/person/bio_supporter.gd").DATA
const FIRST_NAME_DATA = preload("res://addons/faker_gd/locales/en/person/first_name.gd").DATA
const GENDER_DATA = preload("res://addons/faker_gd/locales/en/person/gender.gd").DATA
const JOB_AREA_DATA = preload("res://addons/faker_gd/locales/en/person/job_area.gd").DATA
const JOB_DESCRIPTOR_DATA = preload("res://addons/faker_gd/locales/en/person/job_descriptor.gd").DATA
const JOB_TITLE_PATTERN_DATA = preload("res://addons/faker_gd/locales/en/person/job_title_pattern.gd").DATA
const JOB_TYPE_DATA = preload("res://addons/faker_gd/locales/en/person/job_type.gd").DATA
const LAST_NAME_DATA = preload("res://addons/faker_gd/locales/en/person/last_name.gd").DATA
const LAST_NAME_PATTERN_DATA = preload("res://addons/faker_gd/locales/en/person/last_name_pattern.gd").DATA
const MIDDLE_NAME_DATA = preload("res://addons/faker_gd/locales/en/person/middle_name.gd").DATA
const NAME_DATA = preload("res://addons/faker_gd/locales/en/person/name.gd").DATA
const PREFIX_DATA = preload("res://addons/faker_gd/locales/en/person/prefix.gd").DATA
const SEX_DATA = preload("res://addons/faker_gd/locales/en/person/sex.gd").DATA
const SUFFIX_DATA = preload("res://addons/faker_gd/locales/en/person/suffix.gd").DATA
const WESTERN_ZODIAC_SIGN_DATA = preload("res://addons/faker_gd/locales/en/person/western_zodiac_sign.gd").DATA

const DATA = {
	"bio_part": BIO_PART_DATA,
	"bio_pattern": BIO_PATTERN_DATA,
	"bio_supporter": BIO_SUPPORTER_DATA,
	"first_name": FIRST_NAME_DATA,
	"gender": GENDER_DATA,
	"job_area": JOB_AREA_DATA,
	"job_descriptor": JOB_DESCRIPTOR_DATA,
	"job_title_pattern": JOB_TITLE_PATTERN_DATA,
	"job_type": JOB_TYPE_DATA,
	"last_name": LAST_NAME_DATA,
	"last_name_pattern": LAST_NAME_PATTERN_DATA,
	"middle_name": MIDDLE_NAME_DATA,
	"name": NAME_DATA,
	"prefix": PREFIX_DATA,
	"sex": SEX_DATA,
	"suffix": SUFFIX_DATA,
	"western_zodiac_sign": WESTERN_ZODIAC_SIGN_DATA,
}
