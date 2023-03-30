//
//  Target.swift
//  plastic-bag-of-country
//
//  Created by Peaceful Beagle on 2023/03/30.
//

import Moya
import Alamofire

enum Target {
    
    struct Wrapper: TargetType {
        var baseURL: URL
        var path: String
        var method: Moya.Method
        var task: Moya.Task
        var headers: [String : String]?
    }
    
    var wrapper: Wrapper {
        Wrapper(
            baseURL: self.baseURL,
            path: self.path,
            method: self.method,
            task: self.task,
            headers: self.headers
        )
    }
}

extension Target: TargetType {
    var baseURL: URL {
        return URL(fileReferenceLiteralResourceName: "")
    }
    
    var path: String {
        return ""
    }
    
    var method: Moya.Method {
        return .get
    }
    
    var task: Moya.Task {
        return .uploadFile(self.baseURL)
    }
    
    var headers: [String : String]? {
        return [:]
    }
}
