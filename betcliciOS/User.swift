//
//  User.swift
//  betcliciOS
//
//  Created by Apple on 24/03/2017.
//  Copyright © 2017 M2i. All rights reserved.
//

import Foundation

class User{
    var id:Int = 0
    var email:String = ""
    var password:String = ""
    var firstname:String = ""
    var lastname:String = ""
    var birthdate:String = ""
    var solde:Double = 0
    var token:String = ""
    
    init() {
    }
    
    init(firstname : String, lastname : String, birthdate : String, email : String, password : String) {
        self.firstname = firstname
        self.lastname = lastname
        self.birthdate = birthdate
        self.email = email
        self.password = password
    }
}
