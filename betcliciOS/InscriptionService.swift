//
//  InscriptionService.swift
//  betcliciOS
//
//  Created by Apple on 24/03/2017.
//  Copyright © 2017 M2i. All rights reserved.
//

import Foundation

class InscriptionService {
    
    var session : URLSession = URLSession.shared
    
    func addUser(user: User, callback : @escaping (_ successful : Bool) -> Void) {
        
        let urlComponents = Router.addUser()
        guard let urlAddUser = urlComponents.url else {
            return
        }
        
        var request = URLRequest(url: urlAddUser)
        request.httpMethod = "POST"
        request.httpBody = try? JSONSerialization.data(withJSONObject: ["email" : user.email], options: [])
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        self.session.dataTask(with: request, completionHandler: { data, request, error in
            
            // ......
            
            callback(error != nil)
            
        })
    }
}
