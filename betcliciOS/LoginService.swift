//
//  LoginService.swift
//  betcliciOS
//
//  Created by Apple on 24/03/2017.
//  Copyright © 2017 M2i. All rights reserved.
//

import Foundation
import UIKit
import UserNotifications

class LoginService {
    
    var session : URLSession = URLSession.shared
    
     func login(email: String, password : String, callback : @escaping (_ user : User?) -> Void) {
        
        let urlComponents = Router.login(email : email, password : password)
        
        guard let urlLogin = urlComponents.url else {
            return
        }
        
        var request = URLRequest(url: urlLogin)
        request.httpMethod = "POST"
    
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        // on exécute la requête sur l'API
    
        self.session.dataTask(with: request, completionHandler: { data, request, error in
            
            // on vérifie que la requête s'est bien passée
            guard let d = data else {
                print("Error : login request failed")
                callback(nil)
                return
            }
            
            if let json = try? JSONSerialization.jsonObject(with: d, options: []) as? [String : Any] {
                
                // si la clé "token" existe dans notre dictionnaire, on la récupère
                guard let token = json?["token"] as? String  else {
                    print("Error : unable to find and cast token key")
                    callback(nil)
                    return
                }
               
                let user = User()
                user.token = token
                // on retourne le user
                callback(user)
                
            } else {
                print("Error : token data to json failed")
                callback(nil)
                return
            }
        
        }).resume()
    
    }



}
