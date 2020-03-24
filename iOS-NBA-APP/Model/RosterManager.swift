//
//  RosterManager.swift
//  iOS-NBA-APP
//
//  Created by 茆大蔚 on 20/9/19.
//  Copyright © 2019 茆大蔚. All rights reserved.
//

import Foundation
struct RosterManager{
    let teamManage=TeamManager.teamManage
    static let rosterManage=RosterManager()
    private var rosterREST = Roster_REST.shared
    var rosters: [Int: [Player]] = [:]
    private init(){
        for team in teamManage.Teams{
            rosterREST.getPlayerName(rosterID: team.rosterID)
            rosters[team.rosterID]=rosterREST.roster
        }
    }
    var delegate:Refresh?{
        get{
            return rosterREST.delegate
        }
        set(value){
            rosterREST.delegate = value
        }
    }
}
