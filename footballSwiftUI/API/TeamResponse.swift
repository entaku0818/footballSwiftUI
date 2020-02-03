
import Foundation



struct TeamsResponse:Decodable {

    let api: Teams

}

struct Teams:Decodable {

    let results: Int
    let teams : [Team]

}

//{
//    "api": {
//        "results": 20,
//        "teams": [
//            {
//                "team_id": 46,
//                "name": "Leicester",
//                "code": null,
//                "logo": "https://media.api-football.com/teams/46.png",
//                "country": "England",
//                "founded": 1884,
//                "venue_name": "King Power Stadium",
//                "venue_surface": "grass",
//                "venue_address": "Filbert Way",
//                "venue_city": "Leicester, Leicestershire",
//                "venue_capacity": 32262
//            },
//            {
//                "team_id": 34,
//                "name": "Newcastle",
//                "code": null,
//                "logo": "https://media.api-football.com/teams/34.png",
//                "country": "England",
//                "founded": 1892,
//                "venue_name": "St. James' Park",
//                "venue_surface": "grass",
//                "venue_address": "St. James&apos; Street",
//                "venue_city": "Newcastle upon Tyne",
//                "venue_capacity": 52389
//            },
//            {
//                "team_id": 47,
//                "name": "Tottenham",
//                "code": null,
//                "logo": "https://media.api-football.com/teams/47.png",
//                "country": "England",
//                "founded": 1882,
//                "venue_name": "Tottenham Hotspur Stadium",
//                "venue_surface": "grass",
//                "venue_address": "Bill Nicholson Way, 748 High Road",
//                "venue_city": "London",
//                "venue_capacity": 62062
//            },
//            {
//                "team_id": 35,
//                "name": "Bournemouth",
//                "code": null,
//                "logo": "https://media.api-football.com/teams/35.png",
//                "country": "England",
//                "founded": 1899,
//                "venue_name": "Vitality Stadium",
//                "venue_surface": "grass",
//                "venue_address": "Dean Court, Kings Park",
//                "venue_city": "Bournemouth, Dorset",
//                "venue_capacity": 12000
//            },
//            {
//                "team_id": 43,
//                "name": "Cardiff",
//                "code": null,
//                "logo": "https://media.api-football.com/teams/43.png",
//                "country": "Wales",
//                "founded": 1889,
//                "venue_name": "Cardiff City Stadium",
//                "venue_surface": "grass",
//                "venue_address": "Leckwith Road",
//                "venue_city": "Caerdydd",
//                "venue_capacity": 33280
//            },
//            {
//                "team_id": 36,
//                "name": "Fulham",
//                "code": null,
//                "logo": "https://media.api-football.com/teams/36.png",
//                "country": "England",
//                "founded": 1879,
//                "venue_name": "Craven Cottage",
//                "venue_surface": "grass",
//                "venue_address": "Stevenage Road",
//                "venue_city": "London",
//                "venue_capacity": 25700
//            },
//            {
//                "team_id": 52,
//                "name": "Crystal Palace",
//                "code": null,
//                "logo": "https://media.api-football.com/teams/52.png",
//                "country": "England",
//                "founded": 1905,
//                "venue_name": "Selhurst Park",
//                "venue_surface": "grass",
//                "venue_address": "Holmesdale Road",
//                "venue_city": "London",
//                "venue_capacity": 26309
//            },
//            {
//                "team_id": 37,
//                "name": "Huddersfield",
//                "code": null,
//                "logo": "https://media.api-football.com/teams/37.png",
//                "country": "England",
//                "founded": 1908,
//                "venue_name": "John Smith's Stadium",
//                "venue_surface": "grass",
//                "venue_address": "Stadium Way",
//                "venue_city": "Huddersfield, West Yorkshire",
//                "venue_capacity": 24554
//            },
//            {
//                "team_id": 49,
//                "name": "Chelsea",
//                "code": null,
//                "logo": "https://media.api-football.com/teams/49.png",
//                "country": "England",
//                "founded": 1905,
//                "venue_name": "Stamford Bridge",
//                "venue_surface": "grass",
//                "venue_address": "Fulham Road",
//                "venue_city": "London",
//                "venue_capacity": 41841
//            },
//            {
//                "team_id": 38,
//                "name": "Watford",
//                "code": null,
//                "logo": "https://media.api-football.com/teams/38.png",
//                "country": "England",
//                "founded": 1881,
//                "venue_name": "Vicarage Road",
//                "venue_surface": "grass",
//                "venue_address": "Vicarage Road",
//                "venue_city": "Watford",
//                "venue_capacity": 21577
//            },
//            {
//                "team_id": 51,
//                "name": "Brighton",
//                "code": null,
//                "logo": "https://media.api-football.com/teams/51.png",
//                "country": "England",
//                "founded": 1901,
//                "venue_name": "The American Express Community Stadium",
//                "venue_surface": "grass",
//                "venue_address": "Village Way",
//                "venue_city": "Falmer, East Sussex",
//                "venue_capacity": 30750
//            },
//            {
//                "team_id": 39,
//                "name": "Wolves",
//                "code": null,
//                "logo": "https://media.api-football.com/teams/39.png",
//                "country": "England",
//                "founded": 1877,
//                "venue_name": "Molineux Stadium",
//                "venue_surface": "grass",
//                "venue_address": "Waterloo Road",
//                "venue_city": "Wolverhampton, West Midlands",
//                "venue_capacity": 31700
//            },
//            {
//                "team_id": 45,
//                "name": "Everton",
//                "code": null,
//                "logo": "https://media.api-football.com/teams/45.png",
//                "country": "England",
//                "founded": 1878,
//                "venue_name": "Goodison Park",
//                "venue_surface": "grass",
//                "venue_address": "Goodison Road",
//                "venue_city": "Liverpool",
//                "venue_capacity": 40569
//            },
//            {
//                "team_id": 40,
//                "name": "Liverpool",
//                "code": null,
//                "logo": "https://media.api-football.com/teams/40.png",
//                "country": "England",
//                "founded": 1892,
//                "venue_name": "Anfield",
//                "venue_surface": "grass",
//                "venue_address": "Anfield Road",
//                "venue_city": "Liverpool",
//                "venue_capacity": 55212
//            },
//            {
//                "team_id": 48,
//                "name": "West Ham",
//                "code": null,
//                "logo": "https://media.api-football.com/teams/48.png",
//                "country": "England",
//                "founded": 1895,
//                "venue_name": "London Stadium",
//                "venue_surface": "grass",
//                "venue_address": "Marshgate Lane, Stratford",
//                "venue_city": "London",
//                "venue_capacity": 60000
//            },
//            {
//                "team_id": 41,
//                "name": "Southampton",
//                "code": null,
//                "logo": "https://media.api-football.com/teams/41.png",
//                "country": "England",
//                "founded": 1885,
//                "venue_name": "St. Mary's Stadium",
//                "venue_surface": "grass",
//                "venue_address": "Britannia Road",
//                "venue_city": "Southampton, Hampshire",
//                "venue_capacity": 32689
//            },
//            {
//                "team_id": 44,
//                "name": "Burnley",
//                "code": null,
//                "logo": "https://media.api-football.com/teams/44.png",
//                "country": "England",
//                "founded": 1882,
//                "venue_name": "Turf Moor",
//                "venue_surface": "grass",
//                "venue_address": "Harry Potts Way",
//                "venue_city": "Burnley",
//                "venue_capacity": 22546
//            },
//            {
//                "team_id": 42,
//                "name": "Arsenal",
//                "code": null,
//                "logo": "https://media.api-football.com/teams/42.png",
//                "country": "England",
//                "founded": 1886,
//                "venue_name": "Emirates Stadium",
//                "venue_surface": "grass",
//                "venue_address": "Queensland Road",
//                "venue_city": "London",
//                "venue_capacity": 60383
//            },
//            {
//                "team_id": 50,
//                "name": "Manchester City",
//                "code": null,
//                "logo": "https://media.api-football.com/teams/50.png",
//                "country": "England",
//                "founded": 1880,
//                "venue_name": "Etihad Stadium",
//                "venue_surface": "grass",
//                "venue_address": "Rowsley Street",
//                "venue_city": "Manchester",
//                "venue_capacity": 55097
//            }
//        ]
//    }
//}
    struct TeamResponse:Decodable {

        let teams: Team

    }


