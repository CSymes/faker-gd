extends RefCounted

const DATA = [
	"FakerBot/{{system.semver}}",
	"Googlebot/2.1 (+http://www.google.com/bot.html)",
	"Mozilla/5.0 (Linux; Android {{number.int({\"min\":5,\"max\":13})}}; {{helpers.array_element([\"SM-G998U\",\"SM-G998B\",\"SM-G998N\",\"SM-G998P\",\"SM-T800\"])}}) AppleWebKit/{{number.int({\"min\":536,\"max\":605})}}.{{number.int({\"min\":0,\"max\":99})}} (KHTML, like Gecko) Chrome/{{number.int({\"min\":55,\"max\":131})}}.{{system.semver}} Mobile Safari/{{number.int({\"min\":536,\"max\":605})}}.{{number.int({\"min\":0,\"max\":99})}}",
	"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:{{number.int({\"min\":75, \"max\":133})}}.0) Gecko/20100101 Firefox/{{number.int({\"min\":75, \"max\":133})}}.0",
	"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/{{number.int({\"min\":536,\"max\":605})}}.{{number.int({\"min\":0,\"max\":99})}}.{{number.int({\"min\":0,\"max\":99})}} (KHTML, like Gecko) Version/16.1 Safari/{{number.int({\"min\":536,\"max\":605})}}.{{number.int({\"min\":0,\"max\":99})}}.{{number.int({\"min\":0,\"max\":99})}}",
	"Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_15_7) AppleWebKit/{{number.int({\"min\":536,\"max\":605})}}.{{number.int({\"min\":0,\"max\":99})}}.{{number.int({\"min\":0,\"max\":99})}} (KHTML, like Gecko) Chrome/{{number.int({\"min\":55,\"max\":131})}}.{{system.semver}} Safari/{{number.int({\"min\":536,\"max\":605})}}.{{number.int({\"min\":0,\"max\":99})}}.{{number.int({\"min\":0,\"max\":99})}}",
	"Mozilla/5.0 (Windows NT {{helpers.array_element([\"5.1\",\"5.2\",\"6.0\",\"6.1\",\"6.2\",\"6.3\",\"10.0\"])}}; Win64; x64) AppleWebKit/{{number.int({\"min\":536,\"max\":605})}}.{{number.int({\"min\":0,\"max\":99})}} (KHTML, like Gecko) Chrome/{{number.int({\"min\":55,\"max\":131})}}.{{system.semver}} Safari/{{number.int({\"min\":536,\"max\":605})}}.{{number.int({\"min\":0,\"max\":99})}} Edg/{{number.int({\"min\":110,\"max\":131})}}.{{system.semver}}",
	"Mozilla/5.0 (X11; Linux x86_64; rv:{{number.int({\"min\":75,\"max\":133})}}.0) Gecko/20100101 Firefox/{{number.int({\"min\":75,\"max\":133})}}.0",
	"Mozilla/5.0 (compatible; MSIE {{number.int({\"min\":6,\"max\":10})}}.0; Windows NT {{helpers.array_element([\"5.1\",\"5.2\",\"6.0\",\"6.1\",\"6.2\",\"6.3\",\"10.0\"])}}; Trident/{{number.int({\"min\":4,\"max\":7})}}.0)",
	"Mozilla/5.0 (iPhone; CPU iPhone OS {{number.int({\"min\":10,\"max\":18})}}_{{number.int({\"min\":0,\"max\":4})}} like Mac OS X) AppleWebKit/{{number.int({\"min\":536,\"max\":605})}}.{{number.int({\"min\":0,\"max\":99})}}.{{number.int({\"min\":0,\"max\":99})}} (KHTML, like Gecko) Version/{{number.int({\"min\":10,\"max\":18})}}_{{number.int({\"min\":0,\"max\":4})}} Mobile/15E148 Safari/{{number.int({\"min\":536,\"max\":605})}}.{{number.int({\"min\":0,\"max\":99})}}",
]
