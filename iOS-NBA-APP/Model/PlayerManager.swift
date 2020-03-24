//
//  PlayerManage.swift
//  iOS-NBA-APP
//
//  Created by 茆大蔚 on 19/9/19.
//  Copyright © 2019 茆大蔚. All rights reserved.
//

import Foundation
import UIKit

struct PlayerManager{
    static var playerManage=PlayerManager()
    private (set) var players:[Player] = []
    public init(){
        loadData()
    }
    
    mutating func loadData(){
        players.append(Player.init(playerID:1, first_name: "Ron", last_name: "Baker", team:Team.Knicks, height_feet: 5, height_inches: 6, weight_pounds: 205, playerImage : UIImage(named : "RonBaker")!))
        players.append(Player.init(playerID:2, first_name: "Ike", last_name: "Anigbogu", team:Team.Bulls, height_feet: 5, height_inches: 3, weight_pounds: 215, playerImage: UIImage(named : "IkeAnigbogu")! ))
        players.append(Player.init(playerID:3, first_name: "Carmelo", last_name: "Anthony", team:Team.Bucks, height_feet: 6, height_inches: 1, weight_pounds: 210, playerImage: UIImage(named : "CarmeloAnthony")! ))
        players.append(Player.init(playerID:4, first_name: "Jabari", last_name: "Bird", team:Team.Wizards, height_feet: 6, height_inches: 2, weight_pounds: 240, playerImage: UIImage(named : "JabariBird")! ))
        players.append(Player.init(playerID:5, first_name: "Lorenzo", last_name: "Brown", team:Team.Hawks, height_feet: 5, height_inches: 8, weight_pounds: 245, playerImage: UIImage(named : "LorenzoBrown")! ))
        players.append(Player.init(playerID:6, first_name: "Omri", last_name: "Casspi", team:Team.Warriors, height_feet: 5, height_inches: 9, weight_pounds: 235, playerImage:UIImage(named : "OmriCasspi")! ))
        players.append(Player.init(playerID:7, first_name: "Alex", last_name: "Abrines", team:Team.Grizzlies, height_feet: 5, height_inches: 10, weight_pounds: 225, playerImage: UIImage(named : "AlexAbrines")! ))
        players.append(Player.init(playerID:8, first_name: "Marcin", last_name: "Gortat", team:Team.Kings, height_feet: 6, height_inches: 0, weight_pounds: 239, playerImage: UIImage(named : "MarcinGortat")! ))
        players.append(Player.init(playerID:9, first_name: "Andrew", last_name: "Bogut", team:Team.Nets, height_feet: 5, height_inches: 9, weight_pounds: 240, playerImage: UIImage(named : "AndrewBogut")! ))
        players.append(Player.init(playerID:10, first_name: "Daniel", last_name: "Hamilton", team:Team.Nuggets, height_feet: 5, height_inches: 8, weight_pounds: 244, playerImage: UIImage(named : "DanielHamilton")! ))
        players.append(Player.init(playerID:11, first_name: "Andrew", last_name: "Harrison", team:Team.Grizzlies, height_feet: 6, height_inches: 1, weight_pounds: 210, playerImage: UIImage(named : "AndrewHarrison")! ))
        players.append(Player.init(playerID:12, first_name: "Demetrius", last_name: "Jackson", team:Team.Lakers, height_feet: 5, height_inches: 9, weight_pounds: 239, playerImage: UIImage(named : "DemetriusJackson")! ))
        players.append(Player.init(playerID:13, first_name: "Amir", last_name: "Johnson", team:Team.Pelicans, height_feet: 5, height_inches: 5, weight_pounds: 240, playerImage: UIImage(named : "AmirJohnson")! ))
        players.append(Player.init(playerID:14, first_name: "James", last_name: "Johnson", team:Team.Pacers, height_feet: 5, height_inches: 7, weight_pounds: 224, playerImage: UIImage(named : "JamesJohnson")! ))
        players.append(Player.init(playerID:15, first_name: "Stanley", last_name: "Johnson", team:Team.Clippers, height_feet: 6, height_inches: 3, weight_pounds: 233, playerImage: UIImage(named : "StanleyJohnson")! ))
        players.append(Player.init(playerID:16, first_name: "Cory", last_name: "Joseph", team:Team.Heat, height_feet: 5, height_inches: 9, weight_pounds: 250, playerImage: UIImage(named : "CoryJoseph")! ))
        players.append(Player.init(playerID:17, first_name: "Frank", last_name: "Kaminsky", team:Team.Jazz, height_feet: 5, height_inches: 8, weight_pounds: 255, playerImage: UIImage(named : "FrankKaminsky")! ))
        players.append(Player.init(playerID:18, first_name: "Enes", last_name: "Kanter", team:Team.Magic, height_feet: 5, height_inches: 5, weight_pounds: 235, playerImage: UIImage(named : "EnesKanter")! ))
        players.append(Player.init(playerID:19, first_name: "Luke", last_name: "Kennard", team:Team.Pistons, height_feet: 6, height_inches: 5, weight_pounds: 240, playerImage: UIImage(named : "LukeKennard")! ))
        players.append(Player.init(playerID:20, first_name: "Kyle", last_name: "Anderson", team:Team.Cavaliers, height_feet: 5, height_inches: 9, weight_pounds: 215 , playerImage: UIImage(named : "KyleAnderson")!))
    }
    
    func getCount()->Int{
        
        return  players.count
    }
}
