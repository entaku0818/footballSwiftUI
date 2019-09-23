//
//  Landmark.swift
//  footballSwiftUI
//
//  Created by 遠藤拓弥 on 2019/09/22.
//  Copyright © 2019 遠藤拓弥. All rights reserved.
//


import SwiftUI
import CoreLocation

struct Team: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    // var shortName: String
    fileprivate var imageName: String
    var address: String



//    enum Category: String, CaseIterable, Codable, Hashable {
//        case featured = "Featured"
//        case lakes = "Lakes"
//        case rivers = "Rivers"
//    }
}

let sampleTeams: [Team] = [
    Team(id: 57,
         name: "Arsenal FC",
         imageName: "Arsenal",
         address: "75 Drayton Park London N5 1BU"),
    Team(id: 64,
         name: "Liverpool FC",

         imageName: "Liverpool",
         address: "Anfield Road Liverpool L4 OTH")

]


extension Team {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
