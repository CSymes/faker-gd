class_name FakerEnFinance
extends RefCounted

const ACCOUNT_TYPE_DATA = preload("res://addons/faker_gd/locales/en/finance/account_type.gd").DATA
const CREDIT_CARD_DATA = preload("res://addons/faker_gd/locales/en/finance/credit_card/index.gd").DATA
const CURRENCY_DATA = preload("res://addons/faker_gd/locales/en/finance/currency.gd").DATA
const TRANSACTION_DESCRIPTION_PATTERN_DATA = preload("res://addons/faker_gd/locales/en/finance/transaction_description_pattern.gd").DATA
const TRANSACTION_TYPE_DATA = preload("res://addons/faker_gd/locales/en/finance/transaction_type.gd").DATA

const DATA = {
	"account_type": ACCOUNT_TYPE_DATA,
	"credit_card": CREDIT_CARD_DATA,
	"currency": CURRENCY_DATA,
	"transaction_description_pattern": TRANSACTION_DESCRIPTION_PATTERN_DATA,
	"transaction_type": TRANSACTION_TYPE_DATA,
}
