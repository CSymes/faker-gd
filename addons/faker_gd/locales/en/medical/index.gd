class_name FakerEnMedical
extends RefCounted

const ALLERGEN_DATA = preload("res://addons/faker_gd/locales/en/medical/allergen.gd").DATA
const BLOOD_TYPE_DATA = preload("res://addons/faker_gd/locales/en/medical/blood_type.gd").DATA
const CONDITION_DATA = preload("res://addons/faker_gd/locales/en/medical/condition.gd").DATA
const DEPARTMENT_DATA = preload("res://addons/faker_gd/locales/en/medical/department.gd").DATA
const DRUG_NAME_DATA = preload("res://addons/faker_gd/locales/en/medical/drug_name.gd").DATA
const PROCEDURE_DATA = preload("res://addons/faker_gd/locales/en/medical/procedure.gd").DATA
const SPECIALTY_DATA = preload("res://addons/faker_gd/locales/en/medical/specialty.gd").DATA
const SYMPTOM_DATA = preload("res://addons/faker_gd/locales/en/medical/symptom.gd").DATA

const DATA = {
	"allergen": ALLERGEN_DATA,
	"blood_type": BLOOD_TYPE_DATA,
	"condition": CONDITION_DATA,
	"department": DEPARTMENT_DATA,
	"drug_name": DRUG_NAME_DATA,
	"procedure": PROCEDURE_DATA,
	"specialty": SPECIALTY_DATA,
	"symptom": SYMPTOM_DATA,
}
