//
//  Router.swift
//  betcliciOS
//
//  Created by Apple on 24/03/2017.
//  Copyright © 2017 M2i. All rights reserved.
//

import Foundation


class Router {
    
    static private let apiScheme = "http"
    static private let apiHost = "10.110.10.61"
    
    static func login(email : String, password : String) -> URLComponents {
        var urlComponents = URLComponents()
        urlComponents.scheme = self.apiScheme
        urlComponents.port = 9000
        urlComponents.host = self.apiHost
        urlComponents.path = "/api/login"
        urlComponents.queryItems = [
            URLQueryItem(name: "email", value: "\(email)"),
            URLQueryItem(name: "password", value: "\(password)")
            ]
        return urlComponents
    }


}
