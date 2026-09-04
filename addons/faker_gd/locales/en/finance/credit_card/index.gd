class_name FakerEnFinanceCreditCard
extends RefCounted

const AMERICAN_EXPRESS_DATA = preload("res://addons/faker_gd/locales/en/finance/credit_card/american_express.gd").DATA
const DINERS_CLUB_DATA = preload("res://addons/faker_gd/locales/en/finance/credit_card/diners_club.gd").DATA
const DISCOVER_DATA = preload("res://addons/faker_gd/locales/en/finance/credit_card/discover.gd").DATA
const JCB_DATA = preload("res://addons/faker_gd/locales/en/finance/credit_card/jcb.gd").DATA
const MASTERCARD_DATA = preload("res://addons/faker_gd/locales/en/finance/credit_card/mastercard.gd").DATA
const VISA_DATA = preload("res://addons/faker_gd/locales/en/finance/credit_card/visa.gd").DATA

const DATA = {
	"american_express": AMERICAN_EXPRESS_DATA,
	"diners_club": DINERS_CLUB_DATA,
	"discover": DISCOVER_DATA,
	"jcb": JCB_DATA,
	"mastercard": MASTERCARD_DATA,
	"visa": VISA_DATA,
}
