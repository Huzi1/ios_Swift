//
//  dummyGames.swift
//  iOS-NBA-APP
//
//  Created by Huzaifa on 9/17/19.
//  Copyright © 2019 茆大蔚. All rights reserved.
//

import Foundation
struct GameManager {
    
    private (set) var Mock_Games:[Game] = []
    let mockDate = CustomDate()
//    static let gameManage = GameManager()
    public init(){
        loadData()
    }
    
    mutating func loadData(){
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateFormat = "MMMM-dd-yyyy HH:mm"
        
        Mock_Games.append(Game.init(home: Team.Trail_Blazers, away: Team.Bucks, date: mockDate.getNowDate() , location: "Laverton", hScore: 240, aScore: 200))
        Mock_Games.append(Game.init(home: Team.Bulls, away: Team.Clippers, date: mockDate.getNowDate() , location: "Laverton", hScore: 100, aScore: 120))
        Mock_Games.append(Game.init(home: Team.Grizzlies, away: Team.Lakers, date: mockDate.getNowDate() , location: "New york", hScore: 240, aScore: 210))
        Mock_Games.append(Game.init(home: Team.Mavericks, away: Team.Magic, date: mockDate.getNowDate() , location: "Ontario", hScore: 140, aScore: 200))
        Mock_Games.append(Game.init(home: Team.Heat, away: Team.Celtics, date: mockDate.getNowDate() , location: "Torronto", hScore: 240, aScore: 130))
        Mock_Games.append(Game.init(home: Team.Wizards, away: Team.Nets, date: mockDate.getNowDate() , location: "Philadelphia", hScore: 161, aScore: 200))
        Mock_Games.append(Game.init(home: Team.Pacers, away: Team.Raptors, date: mockDate.getNowDate() , location: "Washington", hScore: 160, aScore: 200))
        Mock_Games.append(Game.init(home: Team.Nuggets, away: Team.Hawks, date: mockDate.getNowDate() , location: "London", hScore: 170, aScore: 210))
        Mock_Games.append(Game.init(home: Team.Lakers, away: Team.Spurs, date: mockDate.getWeekPrevious(1), location: "Los Angeles", hScore: 190, aScore: 140))
        Mock_Games.append(Game.init(home: Team.Timberwolves, away: Team.Suns, date: mockDate.getWeekPrevious(1) , location: "Beijeing", hScore: 153, aScore: 170))
        Mock_Games.append(Game.init(home: Team.Rockets, away: Team.SeventySix, date: mockDate.getWeekPrevious(1) , location: "Boston", hScore: 170, aScore: 200))
        Mock_Games.append(Game.init(home: Team.Pistons, away: Team.Pelicans, date: mockDate.getWeekPrevious(2) , location: "New York", hScore: 240, aScore: 160))
        Mock_Games.append(Game.init(home: Team.Kings, away: Team.Heat, date: mockDate.getWeekPrevious(2) , location: "London", hScore: 190, aScore: 140))
        Mock_Games.append(Game.init(home: Team.Hornets, away: Team.Bucks, date: mockDate.getWeekPrevious(2) , location: "Glassgow", hScore: 178, aScore: 200))
        Mock_Games.append(Game.init(home: Team.Warriors, away: Team.Cavaliers, date: mockDate.getWeekPrevious(2) , location: "Milan", hScore: 170, aScore: 210))
        Mock_Games.append(Game.init(home: Team.Wizards, away: Team.Hornets, date: mockDate.getWeekPrevious(2) , location: "Baghdad", hScore: 200, aScore: 120))
        Mock_Games.append(Game.init(home: Team.Kings, away: Team.Magic, date: mockDate.getWeekPrevious(3) , location: "Sydney", hScore: 190, aScore: 200))
        Mock_Games.append(Game.init(home: Team.Grizzlies, away: Team.Timberwolves, date: mockDate.getWeekPrevious(3) , location: "Perth", hScore: 165, aScore: 132))
    }
    func getCount()->Int{
        
        return  Mock_Games.count
    }
    
        func getFormattedDate(_ passDate: Date)->String {
          let  result = mockDate.getFormattedDate(passDate)
//        let formatter = DateFormatter()
//        formatter.dateFormat = "dd.MM.yyyy HH:mm"
//        let result = formatter.string(from: passDate)
        
        return result
    }
    func getFormattedDateOnly(_ passDate: Date)->String {
        let formatter = mockDate.getFormattedDateOnly(passDate)
       
        
        return formatter
    }
    
    func getValuesbyDate(thisDay: Date){
        
    }
}

