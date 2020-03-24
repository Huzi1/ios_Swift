//
//  PlayerDetail.swift
//  iOS-NBA-APP
//
//  Created by Rudhrakumar Gurunathan on 17/09/19.
//  Copyright © 2019 茆大蔚. All rights reserved.
//

import Foundation

struct PlayerDetail {
    private var playerID: Int
    private var games_played: Int
    private var season: Int
    private var pts: Double
    private var reb: Double
    private var ast: Double
    private var blk: Double
    private var pf: Double
    private var min: String
    
    init(playerID: Int){
        self.playerID = playerID
        self.games_played = 0
        self.season = 0
        self.pts = 0.0
        self.reb = 0.0
        self.ast = 0.0
        self.blk = 0.0
        self.pf = 0.0
        self.min = ""
    }
    
    init(playerID: Int, games_played: Int, season: Int, pts: Double, reb: Double, ast: Double, blk: Double, pf: Double, min: String){
        self.playerID = playerID
        self.games_played = games_played
        self.season = season
        self.pts = pts
        self.reb = reb
        self.ast = ast
        self.blk = blk
        self.pf = pf
        self.min = min
    }
    
    func getPlayerID()->Int{
        return playerID
    }
    
    func getGamesPlayed()->Int{
        return games_played
    }
    
    func getSeason()->Int{
        return season
    }
    
    func getPts()->Double{
        return pts
    }
    
    func getReb()->Double{
        return reb
    }
    
    func getAst() -> Double{
        return ast
    }
    
    func getBlk()->Double{
        return blk
    }
    
    func getPf()->Double{
        return pf
    }
    
    func getMin()->String{
        return min
    }
    
}
