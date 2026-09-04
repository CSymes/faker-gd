class_name FakerEnFinanceTransactionDescriptionPattern
extends RefCounted

const DATA = [
	"A {{finance.transaction_type}} for {{finance.currency_code}} {{finance.amount}} was made at {{company.name}} via card ending ****{{string.numeric(4)}} on account ***{{string.numeric(4)}}.",
	"A {{finance.transaction_type}} of {{finance.currency_code}} {{finance.amount}} occurred at {{company.name}} using a card ending in ****{{string.numeric(4)}} for account ***{{string.numeric(4)}}.",
	"Payment of {{finance.currency_code}} {{finance.amount}} for {{finance.transaction_type}} at {{company.name}}, processed with card ending ****{{string.numeric(4)}} linked to account ***{{string.numeric(4)}}.",
	"Transaction alert: {{finance.transaction_type}} at {{company.name}} using card ending ****{{string.numeric(4)}} for an amount of {{finance.currency_code}} {{finance.amount}} on account ***{{string.numeric(4)}}.",
	"You made a {{finance.transaction_type}} of {{finance.currency_code}} {{finance.amount}} at {{company.name}} using card ending in ****{{string.numeric(4)}} from account ***{{string.numeric(4)}}.",
	"Your {{finance.transaction_type}} of {{finance.currency_code}} {{finance.amount}} at {{company.name}} was successful. Charged via card ****{{string.numeric(4)}} to account ***{{string.numeric(4)}}.",
	"{{finance.transaction_type}} at {{company.name}} with a card ending in ****{{string.numeric(4)}} for {{finance.currency_code}} {{finance.amount}} from account ***{{string.numeric(4)}}.",
	"{{finance.transaction_type}} confirmed at {{company.name}} for {{finance.currency_code}} {{finance.amount}}, card ending in ****{{string.numeric(4)}} associated with account ***{{string.numeric(4)}}.",
	"{{finance.transaction_type}} of {{finance.currency_code}} {{finance.amount}} at {{company.name}} charged to account ending in {{string.numeric(4)}} using card ending in ****{{string.numeric(4)}}.",
	"{{finance.transaction_type}} processed at {{company.name}} for {{finance.currency_code}} {{finance.amount}}, using card ending ****{{string.numeric(4)}}. Account: ***{{string.numeric(4)}}.",
	"{{finance.transaction_type}} transaction at {{company.name}} using card ending with ****{{string.numeric(4)}} for {{finance.currency_code}} {{finance.amount}} in account ***{{string.numeric(4)}}."
]
