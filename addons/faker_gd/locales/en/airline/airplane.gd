extends RefCounted

const DATA = [
	{
		"name": "Aerospatiale/BAC Concorde",
		"iata_type_code": "SSC"
	},
	{
		"name": "Airbus A300",
		"iata_type_code": "AB3"
	},
	{
		"name": "Airbus A310",
		"iata_type_code": "310"
	},
	{
		"name": "Airbus A310-200",
		"iata_type_code": "312"
	},
	{
		"name": "Airbus A310-300",
		"iata_type_code": "313"
	},
	{
		"name": "Airbus A318",
		"iata_type_code": "318"
	},
	{
		"name": "Airbus A319",
		"iata_type_code": "319"
	},
	{
		"name": "Airbus A319neo",
		"iata_type_code": "31N"
	},
	{
		"name": "Airbus A320",
		"iata_type_code": "320"
	},
	{
		"name": "Airbus A320neo",
		"iata_type_code": "32N"
	},
	{
		"name": "Airbus A321",
		"iata_type_code": "321"
	},
	{
		"name": "Airbus A321neo",
		"iata_type_code": "32Q"
	},
	{
		"name": "Airbus A330",
		"iata_type_code": "330"
	},
	{
		"name": "Airbus A330-200",
		"iata_type_code": "332"
	},
	{
		"name": "Airbus A330-300",
		"iata_type_code": "333"
	},
	{
		"name": "Airbus A330-800neo",
		"iata_type_code": "338"
	},
	{
		"name": "Airbus A330-900neo",
		"iata_type_code": "339"
	},
	{
		"name": "Airbus A340",
		"iata_type_code": "340"
	},
	{
		"name": "Airbus A340-200",
		"iata_type_code": "342"
	},
	{
		"name": "Airbus A340-300",
		"iata_type_code": "343"
	},
	{
		"name": "Airbus A340-500",
		"iata_type_code": "345"
	},
	{
		"name": "Airbus A340-600",
		"iata_type_code": "346"
	},
	{
		"name": "Airbus A350",
		"iata_type_code": "350"
	},
	{
		"name": "Airbus A350-900",
		"iata_type_code": "359"
	},
	{
		"name": "Airbus A350-1000",
		"iata_type_code": "351"
	},
	{
		"name": "Airbus A380",
		"iata_type_code": "380"
	},
	{
		"name": "Airbus A380-800",
		"iata_type_code": "388"
	},
	{
		"name": "Antonov An-12",
		"iata_type_code": "ANF"
	},
	{
		"name": "Antonov An-24",
		"iata_type_code": "AN4"
	},
	{
		"name": "Antonov An-26",
		"iata_type_code": "A26"
	},
	{
		"name": "Antonov An-28",
		"iata_type_code": "A28"
	},
	{
		"name": "Antonov An-30",
		"iata_type_code": "A30"
	},
	{
		"name": "Antonov An-32",
		"iata_type_code": "A32"
	},
	{
		"name": "Antonov An-72",
		"iata_type_code": "AN7"
	},
	{
		"name": "Antonov An-124 Ruslan",
		"iata_type_code": "A4F"
	},
	{
		"name": "Antonov An-140",
		"iata_type_code": "A40"
	},
	{
		"name": "Antonov An-148",
		"iata_type_code": "A81"
	},
	{
		"name": "Antonov An-158",
		"iata_type_code": "A58"
	},
	{
		"name": "Antonov An-225 Mriya",
		"iata_type_code": "A5F"
	},
	{
		"name": "Boeing 707",
		"iata_type_code": "703"
	},
	{
		"name": "Boeing 717",
		"iata_type_code": "717"
	},
	{
		"name": "Boeing 720B",
		"iata_type_code": "B72"
	},
	{
		"name": "Boeing 727",
		"iata_type_code": "727"
	},
	{
		"name": "Boeing 727-100",
		"iata_type_code": "721"
	},
	{
		"name": "Boeing 727-200",
		"iata_type_code": "722"
	},
	{
		"name": "Boeing 737 MAX 7",
		"iata_type_code": "7M7"
	},
	{
		"name": "Boeing 737 MAX 8",
		"iata_type_code": "7M8"
	},
	{
		"name": "Boeing 737 MAX 9",
		"iata_type_code": "7M9"
	},
	{
		"name": "Boeing 737 MAX 10",
		"iata_type_code": "7MJ"
	},
	{
		"name": "Boeing 737",
		"iata_type_code": "737"
	},
	{
		"name": "Boeing 737-100",
		"iata_type_code": "731"
	},
	{
		"name": "Boeing 737-200",
		"iata_type_code": "732"
	},
	{
		"name": "Boeing 737-300",
		"iata_type_code": "733"
	},
	{
		"name": "Boeing 737-400",
		"iata_type_code": "734"
	},
	{
		"name": "Boeing 737-500",
		"iata_type_code": "735"
	},
	{
		"name": "Boeing 737-600",
		"iata_type_code": "736"
	},
	{
		"name": "Boeing 737-700",
		"iata_type_code": "73G"
	},
	{
		"name": "Boeing 737-800",
		"iata_type_code": "738"
	},
	{
		"name": "Boeing 737-900",
		"iata_type_code": "739"
	},
	{
		"name": "Boeing 747",
		"iata_type_code": "747"
	},
	{
		"name": "Boeing 747-100",
		"iata_type_code": "741"
	},
	{
		"name": "Boeing 747-200",
		"iata_type_code": "742"
	},
	{
		"name": "Boeing 747-300",
		"iata_type_code": "743"
	},
	{
		"name": "Boeing 747-400",
		"iata_type_code": "744"
	},
	{
		"name": "Boeing 747-400D",
		"iata_type_code": "74J"
	},
	{
		"name": "Boeing 747-8",
		"iata_type_code": "748"
	},
	{
		"name": "Boeing 747SP",
		"iata_type_code": "74L"
	},
	{
		"name": "Boeing 747SR",
		"iata_type_code": "74R"
	},
	{
		"name": "Boeing 757",
		"iata_type_code": "757"
	},
	{
		"name": "Boeing 757-200",
		"iata_type_code": "752"
	},
	{
		"name": "Boeing 757-300",
		"iata_type_code": "753"
	},
	{
		"name": "Boeing 767",
		"iata_type_code": "767"
	},
	{
		"name": "Boeing 767-200",
		"iata_type_code": "762"
	},
	{
		"name": "Boeing 767-300",
		"iata_type_code": "763"
	},
	{
		"name": "Boeing 767-400",
		"iata_type_code": "764"
	},
	{
		"name": "Boeing 777",
		"iata_type_code": "777"
	},
	{
		"name": "Boeing 777-200",
		"iata_type_code": "772"
	},
	{
		"name": "Boeing 777-200LR",
		"iata_type_code": "77L"
	},
	{
		"name": "Boeing 777-300",
		"iata_type_code": "773"
	},
	{
		"name": "Boeing 777-300ER",
		"iata_type_code": "77W"
	},
	{
		"name": "Boeing 787",
		"iata_type_code": "787"
	},
	{
		"name": "Boeing 787-8",
		"iata_type_code": "788"
	},
	{
		"name": "Boeing 787-9",
		"iata_type_code": "789"
	},
	{
		"name": "Boeing 787-10",
		"iata_type_code": "781"
	},
	{
		"name": "Canadair Challenger",
		"iata_type_code": "CCJ"
	},
	{
		"name": "Canadair CL-44",
		"iata_type_code": "CL4"
	},
	{
		"name": "Canadair Regional Jet 100",
		"iata_type_code": "CR1"
	},
	{
		"name": "Canadair Regional Jet 200",
		"iata_type_code": "CR2"
	},
	{
		"name": "Canadair Regional Jet 700",
		"iata_type_code": "CR7"
	},
	{
		"name": "Canadair Regional Jet 705",
		"iata_type_code": "CRA"
	},
	{
		"name": "Canadair Regional Jet 900",
		"iata_type_code": "CR9"
	},
	{
		"name": "Canadair Regional Jet 1000",
		"iata_type_code": "CRK"
	},
	{
		"name": "De Havilland Canada DHC-2 Beaver",
		"iata_type_code": "DHP"
	},
	{
		"name": "De Havilland Canada DHC-2 Turbo-Beaver",
		"iata_type_code": "DHR"
	},
	{
		"name": "De Havilland Canada DHC-3 Otter",
		"iata_type_code": "DHL"
	},
	{
		"name": "De Havilland Canada DHC-4 Caribou",
		"iata_type_code": "DHC"
	},
	{
		"name": "De Havilland Canada DHC-6 Twin Otter",
		"iata_type_code": "DHT"
	},
	{
		"name": "De Havilland Canada DHC-7 Dash 7",
		"iata_type_code": "DH7"
	},
	{
		"name": "De Havilland Canada DHC-8-100 Dash 8 / 8Q",
		"iata_type_code": "DH1"
	},
	{
		"name": "De Havilland Canada DHC-8-200 Dash 8 / 8Q",
		"iata_type_code": "DH2"
	},
	{
		"name": "De Havilland Canada DHC-8-300 Dash 8 / 8Q",
		"iata_type_code": "DH3"
	},
	{
		"name": "De Havilland Canada DHC-8-400 Dash 8Q",
		"iata_type_code": "DH4"
	},
	{
		"name": "De Havilland DH.104 Dove",
		"iata_type_code": "DHD"
	},
	{
		"name": "De Havilland DH.114 Heron",
		"iata_type_code": "DHH"
	},
	{
		"name": "Douglas DC-3",
		"iata_type_code": "D3F"
	},
	{
		"name": "Douglas DC-6",
		"iata_type_code": "D6F"
	},
	{
		"name": "Douglas DC-8-50",
		"iata_type_code": "D8T"
	},
	{
		"name": "Douglas DC-8-62",
		"iata_type_code": "D8L"
	},
	{
		"name": "Douglas DC-8-72",
		"iata_type_code": "D8Q"
	},
	{
		"name": "Douglas DC-9-10",
		"iata_type_code": "D91"
	},
	{
		"name": "Douglas DC-9-20",
		"iata_type_code": "D92"
	},
	{
		"name": "Douglas DC-9-30",
		"iata_type_code": "D93"
	},
	{
		"name": "Douglas DC-9-40",
		"iata_type_code": "D94"
	},
	{
		"name": "Douglas DC-9-50",
		"iata_type_code": "D95"
	},
	{
		"name": "Douglas DC-10",
		"iata_type_code": "D10"
	},
	{
		"name": "Douglas DC-10-10",
		"iata_type_code": "D1X"
	},
	{
		"name": "Douglas DC-10-30",
		"iata_type_code": "D1Y"
	},
	{
		"name": "Embraer 170",
		"iata_type_code": "E70"
	},
	{
		"name": "Embraer 175",
		"iata_type_code": "E75"
	},
	{
		"name": "Embraer 190",
		"iata_type_code": "E90"
	},
	{
		"name": "Embraer 195",
		"iata_type_code": "E95"
	},
	{
		"name": "Embraer E190-E2",
		"iata_type_code": "290"
	},
	{
		"name": "Embraer E195-E2",
		"iata_type_code": "295"
	},
	{
		"name": "Embraer EMB.110 Bandeirante",
		"iata_type_code": "EMB"
	},
	{
		"name": "Embraer EMB.120 Brasilia",
		"iata_type_code": "EM2"
	},
	{
		"name": "Embraer Legacy 600",
		"iata_type_code": "ER3"
	},
	{
		"name": "Embraer Phenom 100",
		"iata_type_code": "EP1"
	},
	{
		"name": "Embraer Phenom 300",
		"iata_type_code": "EP3"
	},
	{
		"name": "Embraer RJ135",
		"iata_type_code": "ER3"
	},
	{
		"name": "Embraer RJ140",
		"iata_type_code": "ERD"
	},
	{
		"name": "Embraer RJ145 Amazon",
		"iata_type_code": "ER4"
	},
	{
		"name": "Ilyushin IL18",
		"iata_type_code": "IL8"
	},
	{
		"name": "Ilyushin IL62",
		"iata_type_code": "IL6"
	},
	{
		"name": "Ilyushin IL76",
		"iata_type_code": "IL7"
	},
	{
		"name": "Ilyushin IL86",
		"iata_type_code": "ILW"
	},
	{
		"name": "Ilyushin IL96-300",
		"iata_type_code": "I93"
	},
	{
		"name": "Ilyushin IL114",
		"iata_type_code": "I14"
	},
	{
		"name": "Lockheed L-182 / 282 / 382 (L-100) Hercules",
		"iata_type_code": "LOH"
	},
	{
		"name": "Lockheed L-188 Electra",
		"iata_type_code": "LOE"
	},
	{
		"name": "Lockheed L-1011 Tristar",
		"iata_type_code": "L10"
	},
	{
		"name": "Lockheed L-1049 Super Constellation",
		"iata_type_code": "L49"
	},
	{
		"name": "McDonnell Douglas MD11",
		"iata_type_code": "M11"
	},
	{
		"name": "McDonnell Douglas MD80",
		"iata_type_code": "M80"
	},
	{
		"name": "McDonnell Douglas MD81",
		"iata_type_code": "M81"
	},
	{
		"name": "McDonnell Douglas MD82",
		"iata_type_code": "M82"
	},
	{
		"name": "McDonnell Douglas MD83",
		"iata_type_code": "M83"
	},
	{
		"name": "McDonnell Douglas MD87",
		"iata_type_code": "M87"
	},
	{
		"name": "McDonnell Douglas MD88",
		"iata_type_code": "M88"
	},
	{
		"name": "McDonnell Douglas MD90",
		"iata_type_code": "M90"
	},
	{
		"name": "Sukhoi Superjet 100-95",
		"iata_type_code": "SU9"
	},
	{
		"name": "Tupolev Tu-134",
		"iata_type_code": "TU3"
	},
	{
		"name": "Tupolev Tu-154",
		"iata_type_code": "TU5"
	},
	{
		"name": "Tupolev Tu-204",
		"iata_type_code": "T20"
	},
	{
		"name": "Yakovlev Yak-40",
		"iata_type_code": "YK4"
	},
	{
		"name": "Yakovlev Yak-42",
		"iata_type_code": "YK2"
	}
]
