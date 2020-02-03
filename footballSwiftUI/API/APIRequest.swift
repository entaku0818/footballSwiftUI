

import Foundation
import APIKit


protocol APIRequest: Request {
    var strategy: JSONDecoder.KeyDecodingStrategy { get }
}

extension APIRequest {
    var baseURL: URL {
        return URL(string: "https://api-football-v1.p.rapidapi.com/")!
    }
    
    var strategy: JSONDecoder.KeyDecodingStrategy {
        return .useDefaultKeys
    }
}

extension APIRequest where Response: Decodable {
    var dataParser: DataParser {
        return DecodableDataParser() as DataParser
    }
    
    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> Response {
        guard let data = object as? Data else {
            throw ResponseError.unexpectedObject(object)
        }
        let decoder = JSONDecoder()
        let errorCollector = ErrorCollector()
        decoder.keyDecodingStrategy = strategy
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        decoder.dateDecodingStrategy = .formatted(formatter)
        return try decoder.decode(Response.self, from: data)
    }
    
    
    func intercept(urlRequest: URLRequest) throws -> URLRequest {
        print("-----RequestURL------")
        debugPrint(urlRequest.url ?? "URL is nil")
        return urlRequest
    }
}


final class DecodableDataParser: DataParser {
    var contentType: String? {
        return "application/json"
    }

    func parse(data: Data) throws -> Any {
        return data
    }
}
class ErrorCollector {
    var errors: [Error] = []
}
