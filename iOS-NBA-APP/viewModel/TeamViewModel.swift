//
//  ViewModel.swift
//  iOS-NBA-APP
//
//  Created by 茆大蔚 on 12/9/19.
//  Copyright © 2019 茆大蔚. All rights reserved.
//

import Foundation

struct TeamViewModel{
    private var teaminfo:TeamManager = TeamManager.teamManage
    private var playerinfo:PlayerManager = PlayerManager.playerManage
    public mutating func getTeam(index:Int)->Team?{
        for (i,team) in teaminfo.Teams.enumerated(){
            if index == i{
                return team
            }
        }
        return nil
    }
    public mutating func getImageName(index:Int)->String?{
        for (i,team) in teaminfo.Teams.enumerated(){
            if index == i{
                return team.imagename
                //test
            }
        }
        return nil
    }
    public mutating func getTeamfromID(ID:Int)->Team?{
        for team in teaminfo.Teams{
            if team.teamid == ID{
                return team
            }
        }
        return nil
    }
    public mutating func getTeamName(index:Int)->String?{
        for (i,team) in teaminfo.Teams.enumerated(){
            if index == i{
                return team.rawValue
            }
        }
        return nil
    }
    public mutating func getCount()->Int{
        return teaminfo.Teams.count
    }
    public mutating func getRoster(teamid:Int)->[Player]{
        var players:[Player] = []
        for p in playerinfo.players{
            if p.getTeam().teamid == teamid{
                players.append(p)
            }
        }
        return players
    }
}
