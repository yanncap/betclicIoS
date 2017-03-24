//
//  Meeting.swift
//  betcliciOS
//
//  Created by Apple on 24/03/2017.
//  Copyright © 2017 M2i. All rights reserved.
//

import Foundation

class Meeting{
    var id:Int
    var name:String
    var date:Date
    var status:Status
    //var bets:[Bet] = []
    
    init(id:Int, name:String, date:Date, status:Status){
        self.id = id
        self.name = name
        self.date = date
        self.status = status
    }
}
