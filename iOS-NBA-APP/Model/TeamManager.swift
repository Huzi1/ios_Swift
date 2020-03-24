//
//  TeamManage.swift
//  iOS-NBA-APP
//
//  Created by 茆大蔚 on 16/9/19.
//  Copyright © 2019 茆大蔚. All rights reserved.
//

import Foundation
struct TeamManager{
    private (set) var Teams:[Team] = []
    static let teamManage = TeamManager()
    private init() {
        loadData()
    }
    private mutating func loadData(){
        Teams.append(Team.Hawks)
        Teams.append(Team.Celtics)
        Teams.append(Team.Nets)
        Teams.append(Team.Hornets)
        Teams.append(Team.Bulls)
        Teams.append(Team.Cavaliers)
        Teams.append(Team.Mavericks)
        Teams.append(Team.Nuggets)
        Teams.append(Team.Pistons)
        Teams.append(Team.Warriors)
        Teams.append(Team.Rockets)
        Teams.append(Team.Pacers)
        Teams.append(Team.Clippers)
        Teams.append(Team.Lakers)
        Teams.append(Team.Grizzlies)
        Teams.append(Team.Heat)
        Teams.append(Team.Bucks)
        Teams.append(Team.Timberwolves)
        Teams.append(Team.Pelicans)
        Teams.append(Team.Knicks)
        Teams.append(Team.Thunder)
        Teams.append(Team.Magic)
        Teams.append(Team.SeventySix)
        Teams.append(Team.Suns)
        Teams.append(Team.Trail_Blazers)
        Teams.append(Team.Kings)
        Teams.append(Team.Spurs)
        Teams.append(Team.Raptors)
        Teams.append(Team.Jazz)
        Teams.append(Team.Wizards)
    }
    public mutating func getTeamfromID(ID:Int)->Team?{
        for team in Teams{
            if team.teamid == ID{
                return team
            }
        }
        return nil
    }
}
