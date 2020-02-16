//
//  LastMatchesResponse.swift
//  footballSwiftUI
//
//  Created by 遠藤拓弥 on 2020/02/09.
//  Copyright © 2020 遠藤拓弥. All rights reserved.
//

import Foundation


struct LastMatche {

    struct Response:Decodable {

        let api: API

    }

    struct API:Decodable {

        let results: Int
        let fixtures : [Fixture]
    }
    struct Fixture:Decodable,Identifiable {

        let id:Int

        let homeTeam: Team
        let awayTeam : Team
        let goalsHomeTeam:Int
        let goalsAwayTeam:Int
        private enum CodingKeys: String, CodingKey {
            case id = "fixture_id"
            case homeTeam = "homeTeam"
            case awayTeam = "awayTeam"
            case goalsHomeTeam = "goalsHomeTeam"
            case goalsAwayTeam = "goalsAwayTeam"
        }
    }
    
    struct Team:Decodable {

        let teamId: Int
        let teamName:String
        let logo:URL
        private enum CodingKeys: String, CodingKey {
            case teamId = "team_id"
            case teamName = "team_name"
            case logo = "logo"
        }
    }
}
//"homeTeam":{3 items
//"team_id":33
//"team_name":"Manchester United"
//"logo":"https://media.api-football.com/teams/33.png"
//}
//"awayTeam":{3 items
//"team_id":39
//"team_name":"Wolves"
//"logo":"https://media.api-football.com/teams/39.png"
//}
//"goalsHomeTeam":1
//"goalsAwayTeam":0
