//
//  PlayerDetailManager.swift
//  iOS-NBA-APP
//
//  Created by Rudhrakumar Gurunathan on 22/09/19.
//  Copyright © 2019 茆大蔚. All rights reserved.
//

import Foundation
struct PlayerDetailManager {
    
    private (set) var PlayerDetails:[PlayerDetail] = []
    
    public init(){
        loadData()
    }
    
    // init(playerID: Int, games_played: Int, season: Int, pts: Double, reb: Double, ast: Double, blk: Double, pf: Double, min: String)
    
    mutating func loadData(){
        PlayerDetails.append(PlayerDetail.init(playerID:1, games_played: 13, season: 2019, pts: 23.15 , reb: 33.7, ast: 01.20, blk: 28.2, pf: 2.5, min: "22.45"))
        PlayerDetails.append(PlayerDetail.init(playerID:2, games_played: 23, season: 2018, pts: 12.02 , reb: 39.6, ast: 01.20, blk: 25.7, pf: 1.5, min: "33.55"))
        PlayerDetails.append(PlayerDetail.init(playerID:3, games_played: 34, season: 2017, pts: 12.52 , reb: 24.6, ast: 12.22, blk: 17.3, pf: 1.0, min: "31.45"))
        PlayerDetails.append(PlayerDetail.init(playerID:4, games_played: 23, season: 2019, pts: 17.20 , reb: 30.7, ast: 32.32, blk: 19.8, pf: 3.2, min: "30.16"))
        PlayerDetails.append(PlayerDetail.init(playerID:5, games_played: 12, season: 2019, pts: 19.09 , reb: 34.6, ast: 10.20, blk: 18.3, pf: 2.6, min: "22.85"))
        PlayerDetails.append(PlayerDetail.init(playerID:6, games_played: 23, season: 2018, pts: 17.09 , reb: 22.7, ast: 15.50, blk: 17.5, pf: 2.2, min: "29.98"))
        PlayerDetails.append(PlayerDetail.init(playerID:7, games_played: 23, season: 2019, pts: 15.33 , reb: 23.8, ast: 19.29, blk: 18.4, pf: 1.6, min: "36.75"))
        PlayerDetails.append(PlayerDetail.init(playerID:8, games_played: 26, season: 2017, pts: 16.44 , reb: 19.7, ast: 19.60, blk: 15.2, pf: 0.6, min: "30.33"))
        PlayerDetails.append(PlayerDetail.init(playerID:9, games_played: 23, season: 2019, pts: 18.62 , reb: 20.1, ast: 20.25, blk: 24.3, pf: 3.5, min: "28.78"))
        PlayerDetails.append(PlayerDetail.init(playerID:10, games_played: 83, season: 2018, pts: 19.02 , reb: 22.2, ast: 26.10, blk: 23.4, pf: 2.7, min: "29.66"))
        PlayerDetails.append(PlayerDetail.init(playerID:11, games_played: 23, season: 2017, pts: 11.12 , reb: 25.3, ast: 10.20, blk: 48.2, pf: 2.9, min: "27.98"))
        PlayerDetails.append(PlayerDetail.init(playerID:12, games_played: 33, season: 2017, pts: 14.29 , reb: 26.6, ast: 11.55, blk: 32.5, pf: 0.3, min: "30.23"))
        PlayerDetails.append(PlayerDetail.init(playerID:13, games_played: 53, season: 2018, pts: 15.12 , reb: 27.7, ast: 17.22, blk: 26.2, pf: 3.5, min: "40.33"))
        PlayerDetails.append(PlayerDetail.init(playerID:14, games_played: 31, season: 2019, pts: 18.33 , reb: 22.5, ast: 19.22, blk: 48.3, pf: 1.3, min: "39.59"))
        PlayerDetails.append(PlayerDetail.init(playerID:15, games_played: 23, season: 2018, pts: 16.12 , reb: 23.8, ast: 21.29, blk: 12.2, pf: 4.2, min: "37.00"))
        PlayerDetails.append(PlayerDetail.init(playerID:16, games_played: 17, season: 2019, pts: 16.52 , reb: 24.8, ast: 16.20, blk: 37.2, pf: 1.5, min: "38.05"))
        PlayerDetails.append(PlayerDetail.init(playerID:17, games_played: 14, season: 2018, pts: 15.55 , reb: 28.7, ast: 19.20, blk: 18.2, pf: 2.3, min: "33.33"))
        PlayerDetails.append(PlayerDetail.init(playerID:18, games_played: 19, season: 2019, pts: 15.62 , reb: 25.7, ast: 19.88, blk: 2.2, pf: 2.2, min: "32.92"))
        PlayerDetails.append(PlayerDetail.init(playerID:19, games_played: 23, season: 2018, pts: 17.32 , reb: 25.3, ast: 22.20, blk: 6.2, pf: 3.6, min: "32.67"))
        PlayerDetails.append(PlayerDetail.init(playerID:20, games_played: 39, season: 2017, pts: 18.01 , reb: 23.6, ast: 23.45, blk: 12.2, pf: 3.7, min: "30.35"))
    }
    
    func getCount()->Int{
        
        return  PlayerDetails.count
    }
}

