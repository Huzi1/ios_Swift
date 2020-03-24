//
//  Games.swift
//  iOS-NBA-APP
//
//  Created by Huzaifa on 3/9/19.
//  Copyright © 2019 茆大蔚. All rights reserved.
//

import Foundation

struct Game{
    private var home : Team
    private var away : Team
    private var hScore : Int
    private var aScore : Int
    private var date : Date
    private var location : String
    init(home:Team, away:Team, date: Date, location:String, hScore: Int, aScore: Int ) {
        self.home = home
        self.away = away
        self.date = date
        self.hScore = hScore
        self.aScore = aScore
        self.location = location
    }
    func getHome()-> Team{
        return home
    }
    
    func getAway()-> Team{
        return away
    }
    func gethScore()-> Int{
        return hScore
    }
    func getaScore()-> Int{
        return aScore
    }
    func getLocation() -> String{
        return location
    }
    
    func getdate() -> Date{
        return date
    }
}
