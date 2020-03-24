//
//  GameViewModel.swift
//  iOS-NBA-APP
//
//  Created by Huzaifa on 9/16/19.
//  Copyright © 2019 茆大蔚. All rights reserved.
//

import Foundation
import UIKit

struct GameViewModel{
    
//    private var gameModel = GameManager.init()
    private var gameinfo:GameManager = GameManager()
//     var datePicker:UIDatePicker?
    
    var count:Int {
        return gameinfo.getCount()
    }
    

    init() {

        gameinfo.loadData()

    }

    
    
    
    public func getGames(byIndex Index:Int)->( home: String,
        away: String, location:String, homeImage:UIImage?, awayImage:UIImage?, hScore: Int, aScore: Int, date: Date){
            print("\(Index) iterate number")
        let home = gameinfo.Mock_Games[Index].getHome()
        let away = gameinfo.Mock_Games[Index].getAway()
        let location = gameinfo.Mock_Games[Index].getLocation()
        let homeImage = UIImage(named:gameinfo.Mock_Games[Index].getHome().imagename )
        let awayImage = UIImage(named:gameinfo.Mock_Games[Index].getAway().imagename )
        let hScore = gameinfo.Mock_Games[Index].gethScore()
        let aScore = gameinfo.Mock_Games[Index].getaScore()
        let date = gameinfo.Mock_Games[Index].getdate()
            return(home.rawValue, away.rawValue, location, homeImage, awayImage, hScore, aScore, date)
}
    public func getGamesIndex(bydates date:Date)-> Array<Int> {
//            let Index = self.count
            var filter_games:[Int] = []
            
            for (Index, element) in gameinfo.Mock_Games.enumerated(){
                if element.getdate() == date{
                    filter_games.append(Index)
                  }
             }
            return filter_games
        }
            

    func getFormattedDate(_ passDate: Date)->String {
        let  result = gameinfo.getFormattedDate(passDate)
     
        
        return result
    }
    
    func getFormattedDateOnly(_ passDate: Date)->String {
        let formatter = gameinfo.getFormattedDateOnly(passDate)
        
        
        
        return formatter
    }
    func dateToString(_ passString: String)->Date {
        let formatter = DateFormatter()
        
        formatter.dateFormat = "dd.MM.yyyy"
        let result = formatter.date(from: passString)!
        
       return result
    }
    
}

