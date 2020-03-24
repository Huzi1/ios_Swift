//
//  TeamDetailViewModel.swift
//  iOS-NBA-APP
//
//  Created by 茆大蔚 on 20/9/19.
//  Copyright © 2019 茆大蔚. All rights reserved.
//

import Foundation

struct TeamDetailViewModel{
    private var rosterManage=RosterManager.rosterManage
    //private var rosterModel = Roster_REST.shared
    func getRoster(rosterID:Int)->[Player]{
        return rosterManage.rosters[rosterID]!
    }
    func getCount(rosterID:Int)->Int{
        return rosterManage.rosters[rosterID]!.count;
    }
}
