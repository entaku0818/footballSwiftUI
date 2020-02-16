//
//  LastMatchesRequest.swift
//  footballSwiftUI
//
//  Created by 遠藤拓弥 on 2020/02/09.
//  Copyright © 2020 遠藤拓弥. All rights reserved.
//

import Foundation
import APIKit

struct LastMatchesRequest:APIRequest {


    let teamId:Int
    let number = 10

    typealias Response = LastMatche.Response
    let method: APIKit.HTTPMethod = .get
    var path: String {
        return "/v2/fixtures/team/\(teamId)/last/\(number)"
    }
    var headerFields: [String : String] {
        return ["x-rapidapi-key": "5306d81378msh9bc45e675c00cb3p14a5fajsnef007b957620"]
    }
    var queryParameters: [String : Any]? {
        return [:]
    }


}
