//
//  Players.swift
//  iOS-NBA-APP
//
//  Created by 茆大蔚 on 1/9/19.
//  Copyright © 2019 茆大蔚. All rights reserved.
//

import Foundation
import UIKit

struct Player {
    private var playerID: Int
    private var first_name: String
    private var last_name: String
    private var team: Team
    private var height_feet: Int
    private var height_inches: Int
    private var weight_pounds: Int
    private var playerImages: UIImage
    
    init(playerID: Int, first_name: String, last_name: String, team: Team ) {
        self.playerID = playerID
        self.first_name = first_name
        self.last_name = last_name
        self.height_feet = 0
        self.height_inches = 0
        self.weight_pounds = 0
        self.team = team
        self.playerImages = UIImage(named: "noimage")!
    }
    
    init(playerID: Int, first_name: String, last_name: String, team: Team, playerImage: UIImage ) {
        self.playerID = playerID
        self.first_name = first_name
        self.last_name = last_name
        self.height_feet = 0
        self.height_inches = 0
        self.weight_pounds = 0
        self.team = team
        self.playerImages = playerImage
    }
    init(playerID: Int, first_name: String, last_name: String, team: Team, height_feet: Int, height_inches: Int, weight_pounds: Int, playerImage: UIImage) {
        self.playerID = playerID
        self.first_name = first_name
        self.last_name = last_name
        self.height_feet = height_feet
        self.height_inches = height_inches
        self.weight_pounds = weight_pounds
        self.team = team
         self.playerImages = playerImage
    }
    
    func getPlayerID()->Int{
        return playerID
    }
    
    func getFirstName()->String{
        return first_name
    }
    
    func getLastName()->String{
        return last_name
    }
    
    func getTeam()->Team{
        return team
    }
    
    func getHeightFeet()->Int{
        return height_feet
    }
    
    func getHeightInches()->Int{
        return height_inches
    }
    
    func getWeightPounds()->Int{
        return weight_pounds
    }
    func getPlayerImage()->UIImage{
        return playerImages
    }
}
