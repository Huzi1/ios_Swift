//
//  PlayerDetailViewModel.swift
//  iOS-NBA-APP
//
//  Created by Rudhrakumar Gurunathan on 17/09/19.
//  Copyright © 2019 茆大蔚. All rights reserved.
//

import Foundation
import UIKit

struct PlayerDetailViewModel{
    
    //Player Detail manager
    private var playerDetail:PlayerDetailManager = PlayerDetailManager()
    
    //Player manager
    private var playerManager:PlayerManager = PlayerManager()
    
    init() {
        playerDetail.loadData()
    }
    
    var count:Int{
        return playerDetail.getCount()
    }
    
    public func getPlayerDetails(byIndex Index:Int)->(
        playerid: Int, games_played: Int, season: Int, pts: Double, reb: Double, ast: Double, blk: Double, pf: Double, min: String, height_feet: Int, height_inches: Int, weight_pounds: Int, teamImage:UIImage?)
    {
        let playerid = playerDetail.PlayerDetails[Index].getPlayerID()
        
        let games_played = playerDetail.PlayerDetails[Index].getGamesPlayed()
        let season = playerDetail.PlayerDetails[Index].getSeason()
        let pts = playerDetail.PlayerDetails[Index].getPts()
        let reb = playerDetail.PlayerDetails[Index].getReb()
        let ast = playerDetail.PlayerDetails[Index].getAst()
        let blk = playerDetail.PlayerDetails[Index].getBlk()
        let pf = playerDetail.PlayerDetails[Index].getPf()
        let min = playerDetail.PlayerDetails[Index].getMin()
        
        let height_feet = playerManager.players[Index].getHeightFeet()
        let height_inches = playerManager.players[Index].getHeightInches()
        let weight_pounds = playerManager.players[Index].getWeightPounds()
        let teamImage = UIImage(named: playerManager.players[Index].getTeam().imagename)
        
        return (playerid, games_played, season, pts, reb, ast, blk, pf, min, height_feet, height_inches, weight_pounds, teamImage)
    }
    
    
    func getImageFor(first_name : String , last_name : String ) -> UIImage?{
        let base_player_image_url = "https://nba-players.herokuapp.com/players/";
        let url = base_player_image_url +  String(last_name) + "/" + String(first_name)
        
        guard let imageURL = URL(string: url) else { return nil }
        let data = try? Data(contentsOf:imageURL)
        let image: UIImage? = nil
        if let imageData = data{
            return UIImage(data: imageData)
        }
        return image
    } // .getImageFor
}
