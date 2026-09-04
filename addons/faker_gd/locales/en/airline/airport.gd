class_name FakerEnAirlineAirport
extends RefCounted

const DATA = [
	{
		"name": "Adelaide International Airport",
		"iata_code": "ADL"
	},
	{
		"name": "Adolfo Suarez Madrid-Barajas Airport",
		"iata_code": "MAD"
	},
	{
		"name": "Aeroparque Jorge Newbery Airport",
		"iata_code": "AEP"
	},
	{
		"name": "Afonso Pena International Airport",
		"iata_code": "CWB"
	},
	{
		"name": "Alfonso Bonilla Aragon International Airport",
		"iata_code": "CLO"
	},
	{
		"name": "Amsterdam Airport Schiphol",
		"iata_code": "AMS"
	},
	{
		"name": "Arturo Merino Benitez International Airport",
		"iata_code": "SCL"
	},
	{
		"name": "Auckland International Airport",
		"iata_code": "AKL"
	},
	{
		"name": "Beijing Capital International Airport",
		"iata_code": "PEK"
	},
	{
		"name": "Belem Val de Cans International Airport",
		"iata_code": "BEL"
	},
	{
		"name": "Belo Horizonte Tancredo Neves International Airport",
		"iata_code": "CNF"
	},
	{
		"name": "Berlin-Tegel Airport",
		"iata_code": "TXL"
	},
	{
		"name": "Bole International Airport",
		"iata_code": "ADD"
	},
	{
		"name": "Brasilia-Presidente Juscelino Kubitschek International Airport",
		"iata_code": "BSB"
	},
	{
		"name": "Brisbane International Airport",
		"iata_code": "BNE"
	},
	{
		"name": "Brussels Airport",
		"iata_code": "BRU"
	},
	{
		"name": "Cairns Airport",
		"iata_code": "CNS"
	},
	{
		"name": "Cairo International Airport",
		"iata_code": "CAI"
	},
	{
		"name": "Canberra Airport",
		"iata_code": "CBR"
	},
	{
		"name": "Capetown International Airport",
		"iata_code": "CPT"
	},
	{
		"name": "Charles de Gaulle International Airport",
		"iata_code": "CDG"
	},
	{
		"name": "Charlotte Douglas International Airport",
		"iata_code": "CLT"
	},
	{
		"name": "Chengdu Shuangliu International Airport",
		"iata_code": "CTU"
	},
	{
		"name": "Chhatrapati Shivaji International Airport",
		"iata_code": "BOM"
	},
	{
		"name": "Chicago O'Hare International Airport",
		"iata_code": "ORD"
	},
	{
		"name": "Chongqing Jiangbei International Airport",
		"iata_code": "CKG"
	},
	{
		"name": "Christchurch International Airport",
		"iata_code": "CHC"
	},
	{
		"name": "Copenhagen Kastrup Airport",
		"iata_code": "CPH"
	},
	{
		"name": "Dallas Fort Worth International Airport",
		"iata_code": "DFW"
	},
	{
		"name": "Daniel K. Inouye International Airport",
		"iata_code": "HNL"
	},
	{
		"name": "Denver International Airport",
		"iata_code": "DEN"
	},
	{
		"name": "Don Mueang International Airport",
		"iata_code": "DMK"
	},
	{
		"name": "Dubai International Airport",
		"iata_code": "DXB"
	},
	{
		"name": "Dublin Airport",
		"iata_code": "DUB"
	},
	{
		"name": "Dusseldorf Airport",
		"iata_code": "DUS"
	},
	{
		"name": "El Dorado International Airport",
		"iata_code": "BOG"
	},
	{
		"name": "Eleftherios Venizelos International Airport",
		"iata_code": "ATH"
	},
	{
		"name": "Faa'a International Airport",
		"iata_code": "PPT"
	},
	{
		"name": "Fort Lauderdale Hollywood International Airport",
		"iata_code": "FLL"
	},
	{
		"name": "Fortaleza Pinto Martins International Airport",
		"iata_code": "FOR"
	},
	{
		"name": "Frankfurt am Main Airport",
		"iata_code": "FRA"
	},
	{
		"name": "George Bush Intercontinental Houston Airport",
		"iata_code": "IAH"
	},
	{
		"name": "Gold Coast Airport",
		"iata_code": "OOL"
	},
	{
		"name": "Guarulhos - Governador Andre Franco Montoro International Airport",
		"iata_code": "GRU"
	},
	{
		"name": "Hartsfield-Jackson Atlanta International Airport",
		"iata_code": "ATL"
	},
	{
		"name": "Helsinki Vantaa Airport",
		"iata_code": "HEL"
	},
	{
		"name": "Hobart International Airport",
		"iata_code": "HBA"
	},
	{
		"name": "Hong Kong International Airport",
		"iata_code": "HKG"
	},
	{
		"name": "Houari Boumediene Airport",
		"iata_code": "ALG"
	},
	{
		"name": "Hurgada International Airport",
		"iata_code": "HRG"
	},
	{
		"name": "Incheon International Airport",
		"iata_code": "ICN"
	},
	{
		"name": "Indira Gandhi International Airport",
		"iata_code": "DEL"
	},
	{
		"name": "Istanbul Airport",
		"iata_code": "IST"
	},
	{
		"name": "Jacksons International Airport",
		"iata_code": "POM"
	},
	{
		"name": "Jeju International Airport",
		"iata_code": "CJU"
	},
	{
		"name": "John F Kennedy International Airport",
		"iata_code": "JFK"
	},
	{
		"name": "Jorge Chavez International Airport",
		"iata_code": "LIM"
	},
	{
		"name": "Jose Maria Cordova International Airport",
		"iata_code": "MDE"
	},
	{
		"name": "Josep Tarradellas Barcelona-El Prat Airport",
		"iata_code": "BCN"
	},
	{
		"name": "Kahului Airport",
		"iata_code": "OGG"
	},
	{
		"name": "King Abdulaziz International Airport",
		"iata_code": "JED"
	},
	{
		"name": "Kuala Lumpur International Airport",
		"iata_code": "KUL"
	},
	{
		"name": "Kunming Changshui International Airport",
		"iata_code": "KMG"
	},
	{
		"name": "La Tontouta International Airport",
		"iata_code": "NOU"
	},
	{
		"name": "Leonardo da Vinci-Fiumicino Airport",
		"iata_code": "FCO"
	},
	{
		"name": "London Heathrow Airport",
		"iata_code": "LHR"
	},
	{
		"name": "Los Angeles International Airport",
		"iata_code": "LAX"
	},
	{
		"name": "McCarran International Airport",
		"iata_code": "LAS"
	},
	{
		"name": "Melbourne International Airport",
		"iata_code": "MEL"
	},
	{
		"name": "Mexico City International Airport",
		"iata_code": "MEX"
	},
	{
		"name": "Miami International Airport",
		"iata_code": "MIA"
	},
	{
		"name": "Ministro Pistarini International Airport",
		"iata_code": "EZE"
	},
	{
		"name": "Minneapolis-St Paul International/Wold-Chamberlain Airport",
		"iata_code": "MSP"
	},
	{
		"name": "Mohammed V International Airport",
		"iata_code": "CMN"
	},
	{
		"name": "Moscow Domodedovo Airport",
		"iata_code": "DME"
	},
	{
		"name": "Munich Airport",
		"iata_code": "MUC"
	},
	{
		"name": "Murtala Muhammed International Airport",
		"iata_code": "LOS"
	},
	{
		"name": "Nadi International Airport",
		"iata_code": "NAN"
	},
	{
		"name": "Nairobi Jomo Kenyatta International Airport",
		"iata_code": "NBO"
	},
	{
		"name": "Narita International Airport",
		"iata_code": "NRT"
	},
	{
		"name": "Newark Liberty International Airport",
		"iata_code": "EWR"
	},
	{
		"name": "Ninoy Aquino International Airport",
		"iata_code": "MNL"
	},
	{
		"name": "Noumea Magenta Airport",
		"iata_code": "GEA"
	},
	{
		"name": "O. R. Tambo International Airport",
		"iata_code": "JNB"
	},
	{
		"name": "Orlando International Airport",
		"iata_code": "MCO"
	},
	{
		"name": "Oslo Lufthavn",
		"iata_code": "OSL"
	},
	{
		"name": "Perth Airport",
		"iata_code": "PER"
	},
	{
		"name": "Phoenix Sky Harbor International Airport",
		"iata_code": "PHX"
	},
	{
		"name": "Recife Guararapes-Gilberto Freyre International Airport",
		"iata_code": "REC"
	},
	{
		"name": "Rio de Janeiro Galeao International Airport",
		"iata_code": "GIG"
	},
	{
		"name": "Salgado Filho International Airport",
		"iata_code": "POA"
	},
	{
		"name": "Salvador Deputado Luis Eduardo Magalhaes International Airport",
		"iata_code": "SSA"
	},
	{
		"name": "San Francisco International Airport",
		"iata_code": "SFO"
	},
	{
		"name": "Santos Dumont Airport",
		"iata_code": "SDU"
	},
	{
		"name": "Sao Paulo-Congonhas Airport",
		"iata_code": "CGH"
	},
	{
		"name": "Seattle Tacoma International Airport",
		"iata_code": "SEA"
	},
	{
		"name": "Shanghai Hongqiao International Airport",
		"iata_code": "SHA"
	},
	{
		"name": "Shanghai Pudong International Airport",
		"iata_code": "PVG"
	},
	{
		"name": "Shenzhen Bao'an International Airport",
		"iata_code": "SZX"
	},
	{
		"name": "Sheremetyevo International Airport",
		"iata_code": "SVO"
	},
	{
		"name": "Singapore Changi Airport",
		"iata_code": "SIN"
	},
	{
		"name": "Soekarno-Hatta International Airport",
		"iata_code": "CGK"
	},
	{
		"name": "Stockholm-Arlanda Airport\"",
		"iata_code": "ARN"
	},
	{
		"name": "Suvarnabhumi Airport",
		"iata_code": "BKK"
	},
	{
		"name": "Sydney Kingsford Smith International Airport",
		"iata_code": "SYD"
	},
	{
		"name": "Taiwan Taoyuan International Airport",
		"iata_code": "TPE"
	},
	{
		"name": "Tan Son Nhat International Airport",
		"iata_code": "SGN"
	},
	{
		"name": "Tokyo Haneda International Airport",
		"iata_code": "HND"
	},
	{
		"name": "Toronto Pearson International Airport",
		"iata_code": "YYZ"
	},
	{
		"name": "Tunis Carthage International Airport",
		"iata_code": "TUN"
	},
	{
		"name": "Vancouver International Airport",
		"iata_code": "YVR"
	},
	{
		"name": "Vienna International Airport",
		"iata_code": "VIE"
	},
	{
		"name": "Viracopos International Airport",
		"iata_code": "VCP"
	},
	{
		"name": "Vnukovo International Airport",
		"iata_code": "VKO"
	},
	{
		"name": "Wellington International Airport",
		"iata_code": "WLG"
	},
	{
		"name": "Xi'an Xianyang International Airport",
		"iata_code": "XIY"
	},
	{
		"name": "Zhukovsky International Airport",
		"iata_code": "ZIA"
	},
	{
		"name": "Zurich Airport",
		"iata_code": "ZRH"
	}
]
