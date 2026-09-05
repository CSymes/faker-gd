extends RefCounted

const DATA = [
	{
		"name": "Aegean Airlines",
		"iata_code": "A3"
	},
	{
		"name": "Aeroflot",
		"iata_code": "SU"
	},
	{
		"name": "Aerolineas Argentinas",
		"iata_code": "AR"
	},
	{
		"name": "Aeromexico",
		"iata_code": "AM"
	},
	{
		"name": "Air Algerie",
		"iata_code": "AH"
	},
	{
		"name": "Air Arabia",
		"iata_code": "G9"
	},
	{
		"name": "Air Canada",
		"iata_code": "AC"
	},
	{
		"name": "Air China",
		"iata_code": "CA"
	},
	{
		"name": "Air Europa",
		"iata_code": "UX"
	},
	{
		"name": "Air France",
		"iata_code": "AF"
	},
	{
		"name": "Air India",
		"iata_code": "AI"
	},
	{
		"name": "Air Mauritius",
		"iata_code": "MK"
	},
	{
		"name": "Air New Zealand",
		"iata_code": "NZ"
	},
	{
		"name": "Air Niugini",
		"iata_code": "PX"
	},
	{
		"name": "Air Tahiti",
		"iata_code": "VT"
	},
	{
		"name": "Air Tahiti Nui",
		"iata_code": "TN"
	},
	{
		"name": "Air Transat",
		"iata_code": "TS"
	},
	{
		"name": "AirAsia X",
		"iata_code": "D7"
	},
	{
		"name": "AirAsia",
		"iata_code": "AK"
	},
	{
		"name": "Aircalin",
		"iata_code": "SB"
	},
	{
		"name": "Alaska Airlines",
		"iata_code": "AS"
	},
	{
		"name": "Alitalia",
		"iata_code": "AZ"
	},
	{
		"name": "All Nippon Airways",
		"iata_code": "NH"
	},
	{
		"name": "Allegiant Air",
		"iata_code": "G4"
	},
	{
		"name": "American Airlines",
		"iata_code": "AA"
	},
	{
		"name": "Asiana Airlines",
		"iata_code": "OZ"
	},
	{
		"name": "Avianca",
		"iata_code": "AV"
	},
	{
		"name": "Azul Linhas Aereas Brasileiras",
		"iata_code": "AD"
	},
	{
		"name": "Azur Air",
		"iata_code": "ZF"
	},
	{
		"name": "Beijing Capital Airlines",
		"iata_code": "JD"
	},
	{
		"name": "Boliviana de Aviacion",
		"iata_code": "OB"
	},
	{
		"name": "British Airways",
		"iata_code": "BA"
	},
	{
		"name": "Cathay Pacific",
		"iata_code": "CX"
	},
	{
		"name": "Cebu Pacific Air",
		"iata_code": "5J"
	},
	{
		"name": "China Airlines",
		"iata_code": "CI"
	},
	{
		"name": "China Eastern Airlines",
		"iata_code": "MU"
	},
	{
		"name": "China Southern Airlines",
		"iata_code": "CZ"
	},
	{
		"name": "Condor",
		"iata_code": "DE"
	},
	{
		"name": "Copa Airlines",
		"iata_code": "CM"
	},
	{
		"name": "Delta Air Lines",
		"iata_code": "DL"
	},
	{
		"name": "Easyfly",
		"iata_code": "VE"
	},
	{
		"name": "EasyJet",
		"iata_code": "U2"
	},
	{
		"name": "EcoJet",
		"iata_code": "8J"
	},
	{
		"name": "Egyptair",
		"iata_code": "MS"
	},
	{
		"name": "El Al",
		"iata_code": "LY"
	},
	{
		"name": "Emirates Airlines",
		"iata_code": "EK"
	},
	{
		"name": "Ethiopian Airlines",
		"iata_code": "ET"
	},
	{
		"name": "Etihad Airways",
		"iata_code": "EY"
	},
	{
		"name": "EVA Air",
		"iata_code": "BR"
	},
	{
		"name": "Fiji Airways",
		"iata_code": "FJ"
	},
	{
		"name": "Finnair",
		"iata_code": "AY"
	},
	{
		"name": "Flybondi",
		"iata_code": "FO"
	},
	{
		"name": "Flydubai",
		"iata_code": "FZ"
	},
	{
		"name": "FlySafair",
		"iata_code": "FA"
	},
	{
		"name": "Frontier Airlines",
		"iata_code": "F9"
	},
	{
		"name": "Garuda Indonesia",
		"iata_code": "GA"
	},
	{
		"name": "Go First",
		"iata_code": "G8"
	},
	{
		"name": "Gol Linhas Aereas Inteligentes",
		"iata_code": "G3"
	},
	{
		"name": "Hainan Airlines",
		"iata_code": "HU"
	},
	{
		"name": "Hawaiian Airlines",
		"iata_code": "HA"
	},
	{
		"name": "IndiGo Airlines",
		"iata_code": "6E"
	},
	{
		"name": "Japan Airlines",
		"iata_code": "JL"
	},
	{
		"name": "Jeju Air",
		"iata_code": "7C"
	},
	{
		"name": "Jet2",
		"iata_code": "LS"
	},
	{
		"name": "JetBlue Airways",
		"iata_code": "B6"
	},
	{
		"name": "JetSMART",
		"iata_code": "JA"
	},
	{
		"name": "Juneyao Airlines",
		"iata_code": "HO"
	},
	{
		"name": "Kenya Airways",
		"iata_code": "KQ"
	},
	{
		"name": "KLM Royal Dutch Airlines",
		"iata_code": "KL"
	},
	{
		"name": "Korean Air",
		"iata_code": "KE"
	},
	{
		"name": "Kulula.com",
		"iata_code": "MN"
	},
	{
		"name": "LATAM Airlines",
		"iata_code": "LA"
	},
	{
		"name": "Lion Air",
		"iata_code": "JT"
	},
	{
		"name": "LOT Polish Airlines",
		"iata_code": "LO"
	},
	{
		"name": "Lufthansa",
		"iata_code": "LH"
	},
	{
		"name": "Libyan Airlines",
		"iata_code": "LN"
	},
	{
		"name": "Linea Aerea Amaszonas",
		"iata_code": "Z8"
	},
	{
		"name": "Malaysia Airlines",
		"iata_code": "MH"
	},
	{
		"name": "Nordwind Airlines",
		"iata_code": "N4"
	},
	{
		"name": "Norwegian Air Shuttle",
		"iata_code": "DY"
	},
	{
		"name": "Oman Air",
		"iata_code": "WY"
	},
	{
		"name": "Pakistan International Airlines",
		"iata_code": "PK"
	},
	{
		"name": "Pegasus Airlines",
		"iata_code": "PC"
	},
	{
		"name": "Philippine Airlines",
		"iata_code": "PR"
	},
	{
		"name": "Qantas Group",
		"iata_code": "QF"
	},
	{
		"name": "Qatar Airways",
		"iata_code": "QR"
	},
	{
		"name": "Republic Airways",
		"iata_code": "YX"
	},
	{
		"name": "Royal Air Maroc",
		"iata_code": "AT"
	},
	{
		"name": "Ryanair",
		"iata_code": "FR"
	},
	{
		"name": "S7 Airlines",
		"iata_code": "S7"
	},
	{
		"name": "SAS",
		"iata_code": "SK"
	},
	{
		"name": "Satena",
		"iata_code": "9R"
	},
	{
		"name": "Saudia",
		"iata_code": "SV"
	},
	{
		"name": "Shandong Airlines",
		"iata_code": "SC"
	},
	{
		"name": "Sichuan Airlines",
		"iata_code": "3U"
	},
	{
		"name": "Singapore Airlines",
		"iata_code": "SQ"
	},
	{
		"name": "Sky Airline",
		"iata_code": "H2"
	},
	{
		"name": "SkyWest Airlines",
		"iata_code": "OO"
	},
	{
		"name": "South African Airways",
		"iata_code": "SA"
	},
	{
		"name": "Southwest Airlines",
		"iata_code": "WN"
	},
	{
		"name": "SpiceJet",
		"iata_code": "SG"
	},
	{
		"name": "Spirit Airlines",
		"iata_code": "NK"
	},
	{
		"name": "Spring Airlines",
		"iata_code": "9C"
	},
	{
		"name": "SriLankan Airlines",
		"iata_code": "UL"
	},
	{
		"name": "Star Peru",
		"iata_code": "2I"
	},
	{
		"name": "Sun Country Airlines",
		"iata_code": "SY"
	},
	{
		"name": "SunExpress",
		"iata_code": "XQ"
	},
	{
		"name": "TAP Air Portugal",
		"iata_code": "TP"
	},
	{
		"name": "Thai AirAsia",
		"iata_code": "FD"
	},
	{
		"name": "Thai Airways",
		"iata_code": "TG"
	},
	{
		"name": "TUI Airways",
		"iata_code": "BY"
	},
	{
		"name": "Tunisair",
		"iata_code": "TU"
	},
	{
		"name": "Turkish Airlines",
		"iata_code": "TK"
	},
	{
		"name": "Ukraine International",
		"iata_code": "PS"
	},
	{
		"name": "United Airlines",
		"iata_code": "UA"
	},
	{
		"name": "Ural Airlines",
		"iata_code": "U6"
	},
	{
		"name": "VietJet Air",
		"iata_code": "VJ"
	},
	{
		"name": "Vietnam Airlines",
		"iata_code": "VN"
	},
	{
		"name": "Virgin Atlantic Airways",
		"iata_code": "VS"
	},
	{
		"name": "Virgin Australia",
		"iata_code": "VA"
	},
	{
		"name": "VivaAerobus",
		"iata_code": "VB"
	},
	{
		"name": "VOEPASS Linhas Aereas",
		"iata_code": "2Z"
	},
	{
		"name": "Volaris",
		"iata_code": "Y4"
	},
	{
		"name": "WestJet",
		"iata_code": "WS"
	},
	{
		"name": "Wingo",
		"iata_code": "P5"
	},
	{
		"name": "Wizz Air",
		"iata_code": "W6"
	}
]
