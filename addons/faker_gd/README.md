# Faker GD

Faker GD provides locale-backed fake data through the `FakerGd` autoload.

## Basic use

```gdscript
var first_name := FakerGd.person.first_name()
var country := FakerGd.location.country()
var currency := FakerGd.finance.currency()
```

The built-in English locale falls back explicitly to Faker.js's shared base data.

## Independent and deterministic generators

```gdscript
var faker := FakerGd.create_faker("en")
if faker != null:
	faker.seed(1234)
	print(faker.person.first_name())
```

Each generator owns an independent `RandomNumberGenerator`. Use `seed()` for repeatable output or `randomize()` to assign new random state.

Repeatability is supported for equivalent calls using the same Faker GD and Godot versions. Seeded output is not intended to match Faker.js.

## Locales

```gdscript
var error := FakerGd.set_locale("en")
var locale := FakerGd.get_locale()
var available := FakerGd.get_available_locales()
var metadata := FakerGd.get_metadata()
```

`set_locale()` returns a Godot `Error` and leaves the previous locale selected when it fails. Locale fallback is explicit: the project default locale is used only to initialise the default generator and is not a fallback for missing definitions.

The internal `base` locale cannot be selected directly.

## Available domains

The initial API exposes operations that directly select locale definitions:

- `airline`: `airline`, `airplane`, `airport`
- `animal`: animal names and `pet_name`
- `book`: `author`, `format`, `genre`, `publisher`, `series`, `title`
- `color`: `human`, `space`
- `commerce`: `department`, `product_adjective`, `product_material`, `product`
- `company`: adjectives, descriptors, nouns, buzz words, and legal entity types
- `database`: `column`, `type`, `collation`, `engine`
- `date`: `month`, `weekday`, `time_zone`
- `finance`: account and transaction types, plus currency records and fields
- `food`: adjectives, categories, fruit, ingredients, meat, spices, and vegetables
- `hacker`: abbreviations, adjectives, ing-verbs, nouns, and verbs
- `internet`: domain suffixes, email providers, emoji, HTTP status codes, and JWT algorithms
- `location`: countries, states, directions, languages, country codes, and time zones
- `lorem`: `word`
- `medical`: specialties, departments, conditions, symptoms, procedures, allergens, blood types, and drug names
- `music`: albums, artists, genres, and song names
- `person`: first and middle names, prefixes, suffixes, gender, sex, job components, and western zodiac signs
- `science`: chemical-element and unit records
- `system`: directory paths, MIME types, and file extensions
- `team`: `creature`
- `vehicle`: bicycle types, fuels, manufacturers, models, and vehicle types
- `word`: common parts of speech

Methods returning dictionaries return copies; changing a returned record does not modify locale data.

## Deferred pattern-backed methods

Template expansion is intentionally not implemented yet. Methods that depend on locale patterns are therefore not exposed as complete functionality. These include full names, biographies, pattern-aware last names, addresses, phone numbers, product names and descriptions, company and team names, and user-agent strings.
