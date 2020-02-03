
import Foundation
import APIKit

struct TeamsRequest:APIRequest {
    

    typealias Response = TeamsResponse
    let method: APIKit.HTTPMethod = .get
    var path: String {
        return "v2/teams/league/2"
    }
    var headerFields: [String : String] {
        return ["x-rapidapi-key": "5306d81378msh9bc45e675c00cb3p14a5fajsnef007b957620"]
    }
    var queryParameters: [String : Any]? {
        return [:]
    }


}

