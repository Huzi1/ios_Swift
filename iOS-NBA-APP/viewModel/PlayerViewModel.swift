//
//  PlayerViewModel.swift
//  iOS-NBA-APP
//
//  Created by 茆大蔚 on 14/9/19.
//  Copyright © 2019 茆大蔚. All rights reserved.
//

import Foundation
import UIKit

struct PlayerViewModel{
    
    
    //Player manager
    private var playerManager:PlayerManager = PlayerManager()
    
    init() {
        playerManager.loadData()
    }
    
    var count:Int{
        return playerManager.getCount()
    }
    
    public func getPlayers(byIndex Index:Int)->(
        playerid: Int,
        first_name: String,
        last_name: String,
        team: String,
        teamImage: UIImage?,
        playerImage: UIImage)
    {
        
        //let playerid =
        let playerid = playerManager.players[Index].getPlayerID()
        let first_name = playerManager.players[Index].getFirstName()
        let last_name = playerManager.players[Index].getLastName()
        let team = playerManager.players[Index].getTeam().fullname
        let teamImage = UIImage(named: playerManager.players[Index].getTeam().imagename)
        let playerImage = playerManager.players[Index].getPlayerImage()
        
        return (playerid,first_name, last_name, team, teamImage, playerImage)
        
    }
    
    
    public func getPlayersById(playerId:Int)->Player?
    {
        
        var currentPlayer : Player?
        currentPlayer = nil;
        for player in playerManager.players{
            if player.getPlayerID() == playerId {
                currentPlayer = player;
                break;
            }
        }
        
        return currentPlayer;
        
        //        if  let currentPlayer = p   {
        //            let playerid = currentPlayer.getPlayerID()
        //            let first_name = currentPlayer.getFirstName()
        //            let last_name = currentPlayer.getLastName()
        //            let team = currentPlayer.getTeam().fullname
        //            let teamImage = UIImage(named: currentPlayer.getTeam().imagename)
        //            let playerImage = currentPlayer.getPlayerImage()
        //
        //            return (playerid,first_name, last_name, team, teamImage, playerImage)
        
    }
    
    
}




//   public func getImageFor(index:Int) -> UIImage?{
//
//        let player = players.Players[index]
//        let base_player_image_url = "https://nba-players.herokuapp.com/players/";
//        let url = base_player_image_url +  String(player.getLastName()) + "/" + String(player.getFirstName())
//
//
//        guard let imageURL = URL(string: url) else { return nil }
//        let data = try? Data(contentsOf:imageURL)
//        let image: UIImage? = nil
//        if let imageData = data{
//            return UIImage(data: imageData)
//        }
//        return image
//    } // .getImageFor

//} //.PlayerViewModel



//struct PlayerViewModel{
//
//    private var playerModel = Player_REST.shared
//
//    private (set) var Players:[Player] = []
//
//    init() {
//        playerModel.loadPlayers()
//    }
//
//    var delegate:Refresh?{
//        get{
//            return playerModel.delegate
//        }
//        set(value){
//            playerModel.delegate = value
//        }
//    } //.delegate
//
//    var count:Int{
//        return players.count
//    }
//
//    var players:[Player]{
//        return playerModel.players
//    }
//
//    func getCount()->Int{
//        return players.count;
//    }
//
//    func getPlayerNameFor(index:Int) ->String{
//        return players[index].getFirstName() + players[index].getLastName()
//    }
//
//    func getTeamNameFor(index:Int) -> String{
//        return players[index].getTeam().rawValue
//    }
//
//    func getPlayer(with playerID: Int){
//        playerModel.getPlayer(withPlayerID: playerID)
//    }
//
//
//    func getImageFor(index:Int) -> UIImage?{
//
//        let player = players[index]
//        let base_player_image_url = "https://nba-players.herokuapp.com/players/";
//        let url = base_player_image_url +  String(player.getLastName()) + "/" + String(player.getFirstName())
//
//
//        guard let imageURL = URL(string: url) else { return nil }
//        let data = try? Data(contentsOf:imageURL)
//        let image: UIImage? = nil
//        if let imageData = data{
//            return UIImage(data: imageData)
//        }
//        return image
//    } // .getImageFor
//
//} //.PlayerViewModel
