extends RefCounted

const DATA = [
	{
		"name": "UAE Dirham",
		"code": "AED",
		"symbol": "",
		"numeric_code": "784"
	},
	{
		"name": "Afghani",
		"code": "AFN",
		"symbol": "؋",
		"numeric_code": "971"
	},
	{
		"name": "Lek",
		"code": "ALL",
		"symbol": "Lek",
		"numeric_code": "008"
	},
	{
		"name": "Armenian Dram",
		"code": "AMD",
		"symbol": "",
		"numeric_code": "051"
	},
	{
		"name": "Netherlands Antillian Guilder",
		"code": "ANG",
		"symbol": "ƒ",
		"numeric_code": "532"
	},
	{
		"name": "Kwanza",
		"code": "AOA",
		"symbol": "",
		"numeric_code": "973"
	},
	{
		"name": "Argentine Peso",
		"code": "ARS",
		"symbol": "$",
		"numeric_code": "032"
	},
	{
		"name": "Australian Dollar",
		"code": "AUD",
		"symbol": "$",
		"numeric_code": "036"
	},
	{
		"name": "Aruban Guilder",
		"code": "AWG",
		"symbol": "ƒ",
		"numeric_code": "533"
	},
	{
		"name": "Azerbaijanian Manat",
		"code": "AZN",
		"symbol": "ман",
		"numeric_code": "944"
	},
	{
		"name": "Convertible Marks",
		"code": "BAM",
		"symbol": "KM",
		"numeric_code": "977"
	},
	{
		"name": "Barbados Dollar",
		"code": "BBD",
		"symbol": "$",
		"numeric_code": "052"
	},
	{
		"name": "Taka",
		"code": "BDT",
		"symbol": "",
		"numeric_code": "050"
	},
	{
		"name": "Bulgarian Lev",
		"code": "BGN",
		"symbol": "лв",
		"numeric_code": "975"
	},
	{
		"name": "Bahraini Dinar",
		"code": "BHD",
		"symbol": "",
		"numeric_code": "048"
	},
	{
		"name": "Burundi Franc",
		"code": "BIF",
		"symbol": "",
		"numeric_code": "108"
	},
	{
		"name": "Bermudian Dollar (customarily known as Bermuda Dollar)",
		"code": "BMD",
		"symbol": "$",
		"numeric_code": "060"
	},
	{
		"name": "Brunei Dollar",
		"code": "BND",
		"symbol": "$",
		"numeric_code": "096"
	},
	{
		"name": "Boliviano boliviano",
		"code": "BOB",
		"symbol": "Bs",
		"numeric_code": "068"
	},
	{
		"name": "Brazilian Real",
		"code": "BRL",
		"symbol": "R$",
		"numeric_code": "986"
	},
	{
		"name": "Bahamian Dollar",
		"code": "BSD",
		"symbol": "$",
		"numeric_code": "044"
	},
	{
		"name": "Pula",
		"code": "BWP",
		"symbol": "P",
		"numeric_code": "072"
	},
	{
		"name": "Belarusian Ruble",
		"code": "BYN",
		"symbol": "Rbl",
		"numeric_code": "933"
	},
	{
		"name": "Belize Dollar",
		"code": "BZD",
		"symbol": "BZ$",
		"numeric_code": "084"
	},
	{
		"name": "Canadian Dollar",
		"code": "CAD",
		"symbol": "$",
		"numeric_code": "124"
	},
	{
		"name": "Congolese Franc",
		"code": "CDF",
		"symbol": "",
		"numeric_code": "976"
	},
	{
		"name": "Swiss Franc",
		"code": "CHF",
		"symbol": "CHF",
		"numeric_code": "756"
	},
	{
		"name": "Chilean Peso",
		"code": "CLP",
		"symbol": "$",
		"numeric_code": "152"
	},
	{
		"name": "Yuan Renminbi",
		"code": "CNY",
		"symbol": "¥",
		"numeric_code": "156"
	},
	{
		"name": "Colombian Peso",
		"code": "COP",
		"symbol": "$",
		"numeric_code": "170"
	},
	{
		"name": "Costa Rican Colon",
		"code": "CRC",
		"symbol": "₡",
		"numeric_code": "188"
	},
	{
		"name": "Cuban Peso",
		"code": "CUP",
		"symbol": "₱",
		"numeric_code": "192"
	},
	{
		"name": "Cape Verde Escudo",
		"code": "CVE",
		"symbol": "",
		"numeric_code": "132"
	},
	{
		"name": "Czech Koruna",
		"code": "CZK",
		"symbol": "Kč",
		"numeric_code": "203"
	},
	{
		"name": "Djibouti Franc",
		"code": "DJF",
		"symbol": "",
		"numeric_code": "262"
	},
	{
		"name": "Danish Krone",
		"code": "DKK",
		"symbol": "kr",
		"numeric_code": "208"
	},
	{
		"name": "Dominican Peso",
		"code": "DOP",
		"symbol": "RD$",
		"numeric_code": "214"
	},
	{
		"name": "Algerian Dinar",
		"code": "DZD",
		"symbol": "",
		"numeric_code": "012"
	},
	{
		"name": "Egyptian Pound",
		"code": "EGP",
		"symbol": "£",
		"numeric_code": "818"
	},
	{
		"name": "Nakfa",
		"code": "ERN",
		"symbol": "",
		"numeric_code": "232"
	},
	{
		"name": "Ethiopian Birr",
		"code": "ETB",
		"symbol": "",
		"numeric_code": "230"
	},
	{
		"name": "Euro",
		"code": "EUR",
		"symbol": "€",
		"numeric_code": "978"
	},
	{
		"name": "Fiji Dollar",
		"code": "FJD",
		"symbol": "$",
		"numeric_code": "242"
	},
	{
		"name": "Falkland Islands Pound",
		"code": "FKP",
		"symbol": "£",
		"numeric_code": "238"
	},
	{
		"name": "Pound Sterling",
		"code": "GBP",
		"symbol": "£",
		"numeric_code": "826"
	},
	{
		"name": "Lari",
		"code": "GEL",
		"symbol": "",
		"numeric_code": "981"
	},
	{
		"name": "Cedi",
		"code": "GHS",
		"symbol": "",
		"numeric_code": "936"
	},
	{
		"name": "Gibraltar Pound",
		"code": "GIP",
		"symbol": "£",
		"numeric_code": "292"
	},
	{
		"name": "Dalasi",
		"code": "GMD",
		"symbol": "",
		"numeric_code": "270"
	},
	{
		"name": "Guinea Franc",
		"code": "GNF",
		"symbol": "",
		"numeric_code": "324"
	},
	{
		"name": "Quetzal",
		"code": "GTQ",
		"symbol": "Q",
		"numeric_code": "320"
	},
	{
		"name": "Guyana Dollar",
		"code": "GYD",
		"symbol": "$",
		"numeric_code": "328"
	},
	{
		"name": "Hong Kong Dollar",
		"code": "HKD",
		"symbol": "$",
		"numeric_code": "344"
	},
	{
		"name": "Lempira",
		"code": "HNL",
		"symbol": "L",
		"numeric_code": "340"
	},
	{
		"name": "Gourde",
		"code": "HTG",
		"symbol": "",
		"numeric_code": "332"
	},
	{
		"name": "Forint",
		"code": "HUF",
		"symbol": "Ft",
		"numeric_code": "348"
	},
	{
		"name": "Rupiah",
		"code": "IDR",
		"symbol": "Rp",
		"numeric_code": "360"
	},
	{
		"name": "New Israeli Sheqel",
		"code": "ILS",
		"symbol": "₪",
		"numeric_code": "376"
	},
	{
		"name": "Bhutanese Ngultrum",
		"code": "BTN",
		"symbol": "Nu",
		"numeric_code": "064"
	},
	{
		"name": "Indian Rupee",
		"code": "INR",
		"symbol": "₹",
		"numeric_code": "356"
	},
	{
		"name": "Iraqi Dinar",
		"code": "IQD",
		"symbol": "",
		"numeric_code": "368"
	},
	{
		"name": "Iranian Rial",
		"code": "IRR",
		"symbol": "﷼",
		"numeric_code": "364"
	},
	{
		"name": "Iceland Krona",
		"code": "ISK",
		"symbol": "kr",
		"numeric_code": "352"
	},
	{
		"name": "Jamaican Dollar",
		"code": "JMD",
		"symbol": "J$",
		"numeric_code": "388"
	},
	{
		"name": "Jordanian Dinar",
		"code": "JOD",
		"symbol": "",
		"numeric_code": "400"
	},
	{
		"name": "Yen",
		"code": "JPY",
		"symbol": "¥",
		"numeric_code": "392"
	},
	{
		"name": "Kenyan Shilling",
		"code": "KES",
		"symbol": "",
		"numeric_code": "404"
	},
	{
		"name": "Som",
		"code": "KGS",
		"symbol": "лв",
		"numeric_code": "417"
	},
	{
		"name": "Riel",
		"code": "KHR",
		"symbol": "៛",
		"numeric_code": "116"
	},
	{
		"name": "Comoro Franc",
		"code": "KMF",
		"symbol": "",
		"numeric_code": "174"
	},
	{
		"name": "North Korean Won",
		"code": "KPW",
		"symbol": "₩",
		"numeric_code": "408"
	},
	{
		"name": "Won",
		"code": "KRW",
		"symbol": "₩",
		"numeric_code": "410"
	},
	{
		"name": "Kuwaiti Dinar",
		"code": "KWD",
		"symbol": "",
		"numeric_code": "414"
	},
	{
		"name": "Cayman Islands Dollar",
		"code": "KYD",
		"symbol": "$",
		"numeric_code": "136"
	},
	{
		"name": "Tenge",
		"code": "KZT",
		"symbol": "лв",
		"numeric_code": "398"
	},
	{
		"name": "Kip",
		"code": "LAK",
		"symbol": "₭",
		"numeric_code": "418"
	},
	{
		"name": "Lebanese Pound",
		"code": "LBP",
		"symbol": "£",
		"numeric_code": "422"
	},
	{
		"name": "Sri Lanka Rupee",
		"code": "LKR",
		"symbol": "₨",
		"numeric_code": "144"
	},
	{
		"name": "Liberian Dollar",
		"code": "LRD",
		"symbol": "$",
		"numeric_code": "430"
	},
	{
		"name": "Libyan Dinar",
		"code": "LYD",
		"symbol": "",
		"numeric_code": "434"
	},
	{
		"name": "Moroccan Dirham",
		"code": "MAD",
		"symbol": "",
		"numeric_code": "504"
	},
	{
		"name": "Moldovan Leu",
		"code": "MDL",
		"symbol": "",
		"numeric_code": "498"
	},
	{
		"name": "Malagasy Ariary",
		"code": "MGA",
		"symbol": "",
		"numeric_code": "969"
	},
	{
		"name": "Denar",
		"code": "MKD",
		"symbol": "ден",
		"numeric_code": "807"
	},
	{
		"name": "Kyat",
		"code": "MMK",
		"symbol": "",
		"numeric_code": "104"
	},
	{
		"name": "Tugrik",
		"code": "MNT",
		"symbol": "₮",
		"numeric_code": "496"
	},
	{
		"name": "Pataca",
		"code": "MOP",
		"symbol": "",
		"numeric_code": "446"
	},
	{
		"name": "Ouguiya",
		"code": "MRU",
		"symbol": "",
		"numeric_code": "929"
	},
	{
		"name": "Mauritius Rupee",
		"code": "MUR",
		"symbol": "₨",
		"numeric_code": "480"
	},
	{
		"name": "Rufiyaa",
		"code": "MVR",
		"symbol": "",
		"numeric_code": "462"
	},
	{
		"name": "Kwacha",
		"code": "MWK",
		"symbol": "",
		"numeric_code": "454"
	},
	{
		"name": "Mexican Peso",
		"code": "MXN",
		"symbol": "$",
		"numeric_code": "484"
	},
	{
		"name": "Malaysian Ringgit",
		"code": "MYR",
		"symbol": "RM",
		"numeric_code": "458"
	},
	{
		"name": "Metical",
		"code": "MZN",
		"symbol": "MT",
		"numeric_code": "943"
	},
	{
		"name": "Naira",
		"code": "NGN",
		"symbol": "₦",
		"numeric_code": "566"
	},
	{
		"name": "Cordoba Oro",
		"code": "NIO",
		"symbol": "C$",
		"numeric_code": "558"
	},
	{
		"name": "Norwegian Krone",
		"code": "NOK",
		"symbol": "kr",
		"numeric_code": "578"
	},
	{
		"name": "Nepalese Rupee",
		"code": "NPR",
		"symbol": "₨",
		"numeric_code": "524"
	},
	{
		"name": "New Zealand Dollar",
		"code": "NZD",
		"symbol": "$",
		"numeric_code": "554"
	},
	{
		"name": "Rial Omani",
		"code": "OMR",
		"symbol": "﷼",
		"numeric_code": "512"
	},
	{
		"name": "Balboa",
		"code": "PAB",
		"symbol": "B/.",
		"numeric_code": "590"
	},
	{
		"name": "Nuevo Sol",
		"code": "PEN",
		"symbol": "S/.",
		"numeric_code": "604"
	},
	{
		"name": "Kina",
		"code": "PGK",
		"symbol": "",
		"numeric_code": "598"
	},
	{
		"name": "Philippine Peso",
		"code": "PHP",
		"symbol": "Php",
		"numeric_code": "608"
	},
	{
		"name": "Pakistan Rupee",
		"code": "PKR",
		"symbol": "₨",
		"numeric_code": "586"
	},
	{
		"name": "Zloty",
		"code": "PLN",
		"symbol": "zł",
		"numeric_code": "985"
	},
	{
		"name": "Guarani",
		"code": "PYG",
		"symbol": "Gs",
		"numeric_code": "600"
	},
	{
		"name": "Qatari Rial",
		"code": "QAR",
		"symbol": "﷼",
		"numeric_code": "634"
	},
	{
		"name": "New Leu",
		"code": "RON",
		"symbol": "lei",
		"numeric_code": "946"
	},
	{
		"name": "Serbian Dinar",
		"code": "RSD",
		"symbol": "Дин.",
		"numeric_code": "941"
	},
	{
		"name": "Russian Ruble",
		"code": "RUB",
		"symbol": "руб",
		"numeric_code": "643"
	},
	{
		"name": "Rwanda Franc",
		"code": "RWF",
		"symbol": "",
		"numeric_code": "646"
	},
	{
		"name": "Saudi Riyal",
		"code": "SAR",
		"symbol": "﷼",
		"numeric_code": "682"
	},
	{
		"name": "Solomon Islands Dollar",
		"code": "SBD",
		"symbol": "$",
		"numeric_code": "090"
	},
	{
		"name": "Seychelles Rupee",
		"code": "SCR",
		"symbol": "₨",
		"numeric_code": "690"
	},
	{
		"name": "Sudanese Pound",
		"code": "SDG",
		"symbol": "",
		"numeric_code": "938"
	},
	{
		"name": "Swedish Krona",
		"code": "SEK",
		"symbol": "kr",
		"numeric_code": "752"
	},
	{
		"name": "Singapore Dollar",
		"code": "SGD",
		"symbol": "$",
		"numeric_code": "702"
	},
	{
		"name": "Saint Helena Pound",
		"code": "SHP",
		"symbol": "£",
		"numeric_code": "654"
	},
	{
		"name": "Leone",
		"code": "SLE",
		"symbol": "",
		"numeric_code": "925"
	},
	{
		"name": "Somali Shilling",
		"code": "SOS",
		"symbol": "S",
		"numeric_code": "706"
	},
	{
		"name": "Surinam Dollar",
		"code": "SRD",
		"symbol": "$",
		"numeric_code": "968"
	},
	{
		"name": "South Sudanese pound",
		"code": "SSP",
		"symbol": "",
		"numeric_code": "728"
	},
	{
		"name": "Dobra",
		"code": "STN",
		"symbol": "Db",
		"numeric_code": "930"
	},
	{
		"name": "Syrian Pound",
		"code": "SYP",
		"symbol": "£",
		"numeric_code": "760"
	},
	{
		"name": "Lilangeni",
		"code": "SZL",
		"symbol": "",
		"numeric_code": "748"
	},
	{
		"name": "Baht",
		"code": "THB",
		"symbol": "฿",
		"numeric_code": "764"
	},
	{
		"name": "Somoni",
		"code": "TJS",
		"symbol": "",
		"numeric_code": "972"
	},
	{
		"name": "Manat",
		"code": "TMT",
		"symbol": "",
		"numeric_code": "934"
	},
	{
		"name": "Tunisian Dinar",
		"code": "TND",
		"symbol": "",
		"numeric_code": "788"
	},
	{
		"name": "Pa'anga",
		"code": "TOP",
		"symbol": "",
		"numeric_code": "776"
	},
	{
		"name": "Turkish Lira",
		"code": "TRY",
		"symbol": "₺",
		"numeric_code": "949"
	},
	{
		"name": "Trinidad and Tobago Dollar",
		"code": "TTD",
		"symbol": "TT$",
		"numeric_code": "780"
	},
	{
		"name": "New Taiwan Dollar",
		"code": "TWD",
		"symbol": "NT$",
		"numeric_code": "901"
	},
	{
		"name": "Tanzanian Shilling",
		"code": "TZS",
		"symbol": "",
		"numeric_code": "834"
	},
	{
		"name": "Hryvnia",
		"code": "UAH",
		"symbol": "₴",
		"numeric_code": "980"
	},
	{
		"name": "Uganda Shilling",
		"code": "UGX",
		"symbol": "",
		"numeric_code": "800"
	},
	{
		"name": "US Dollar",
		"code": "USD",
		"symbol": "$",
		"numeric_code": "840"
	},
	{
		"name": "Peso Uruguayo",
		"code": "UYU",
		"symbol": "$U",
		"numeric_code": "858"
	},
	{
		"name": "Uzbekistan Sum",
		"code": "UZS",
		"symbol": "лв",
		"numeric_code": "860"
	},
	{
		"name": "Venezuelan bolívar",
		"code": "VES",
		"symbol": "Bs",
		"numeric_code": "928"
	},
	{
		"name": "Dong",
		"code": "VND",
		"symbol": "₫",
		"numeric_code": "704"
	},
	{
		"name": "Vatu",
		"code": "VUV",
		"symbol": "",
		"numeric_code": "548"
	},
	{
		"name": "Tala",
		"code": "WST",
		"symbol": "",
		"numeric_code": "882"
	},
	{
		"name": "CFA Franc BEAC",
		"code": "XAF",
		"symbol": "",
		"numeric_code": "950"
	},
	{
		"name": "East Caribbean Dollar",
		"code": "XCD",
		"symbol": "$",
		"numeric_code": "951"
	},
	{
		"name": "CFA Franc BCEAO",
		"code": "XOF",
		"symbol": "",
		"numeric_code": "952"
	},
	{
		"name": "CFP Franc",
		"code": "XPF",
		"symbol": "",
		"numeric_code": "953"
	},
	{
		"name": "Yemeni Rial",
		"code": "YER",
		"symbol": "﷼",
		"numeric_code": "886"
	},
	{
		"name": "Rand",
		"code": "ZAR",
		"symbol": "R",
		"numeric_code": "710"
	},
	{
		"name": "Lesotho Loti",
		"code": "LSL",
		"symbol": "",
		"numeric_code": "426"
	},
	{
		"name": "Namibia Dollar",
		"code": "NAD",
		"symbol": "N$",
		"numeric_code": "516"
	},
	{
		"name": "Zambian Kwacha",
		"code": "ZMW",
		"symbol": "K",
		"numeric_code": "967"
	},
	{
		"name": "Zimbabwe Dollar",
		"code": "ZWL",
		"symbol": "",
		"numeric_code": "932"
	}
]
