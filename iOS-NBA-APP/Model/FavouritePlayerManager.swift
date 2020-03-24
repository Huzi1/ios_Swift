//
//  FavouritePlayerManager.swift
//  iOS-NBA-APP
//
//  Created by 茆大蔚 on 16/9/19.
//  Copyright © 2019 茆大蔚. All rights reserved.
//

import Foundation
struct FavouritePlayerManager{
    private (set) var FavouritePlayers:[Player] = []
    private mutating func addPlayers(player:Player){
        FavouritePlayers.append(player)
    }
}
