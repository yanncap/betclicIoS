//
//  BetclicDataProvider.swift
//  betcliciOS
//
//  Created by Apple on 24/03/2017.
//  Copyright © 2017 M2i. All rights reserved.
//

import Foundation

class BetclicDataProvider {

    static let tokenKey = "token"
    
    // Add token locally
    static func saveTokenLocally(_ token : String) {
        // on sérialise notre token
       let tokenData = NSKeyedArchiver.archivedData(withRootObject: token)
        
        // On ajoute le token dans le storage local en l'associant à la clé "token"
        UserDefaults.standard.set(tokenData, forKey: tokenKey)
    }
    
    // Removes token from local storage
    static func removeTokenLocally() {
        // On supprime les données associées à la clé "token"
        UserDefaults.standard.removeObject(forKey: tokenKey)
    }
    
    
}
