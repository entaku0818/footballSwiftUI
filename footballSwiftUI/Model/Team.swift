//
//  Team.swift
//  footballSwiftUI
//
//  Created by 遠藤拓弥 on 2019/09/22.
//  Copyright © 2019 遠藤拓弥. All rights reserved.
//


import SwiftUI

struct Team: Codable, Identifiable {
    var id: Int
    var name: String
//    var id: Int
//    var name: String
    var code: String?
    var logo: URL
//
//    var venueCity: String
    private enum CodingKeys: String, CodingKey {
        case id = "team_id"
        case name = "name"
        case code = "code"
        case logo = "logo"
//        case venueCity = "venue_city"
    }
//        {
//            "team_id": 33,
//            "name": "Manchester United",
//            "code": "MUN",
//            "logo": "https://media.api-football.com/teams/33.png",
//            "country": "England",
//            "founded": 1878,
//            "venue_name": "Old Trafford",
//            "venue_surface": "grass",
//            "venue_address": "Sir Matt Busby Way",
//            "venue_city": "Manchester",
//            "venue_capacity": 76212
//        }

}




