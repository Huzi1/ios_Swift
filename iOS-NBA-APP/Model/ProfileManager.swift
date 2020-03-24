//
//  ProfileManager.swift
//  iOS-NBA-APP
//
//  Created by Rudhrakumar Gurunathan on 22/09/19.
//  Copyright © 2019 茆大蔚. All rights reserved.
//

import Foundation

struct ProfileManager {
    private (set) var Profiles:[Profile] = []
    static let profileManage = ProfileManager()
    
    private init() {
        loadProfile()
    }
    
    private mutating func loadProfile(){
        Profiles.append(Profile.david)
        Profiles.append(Profile.huzaifa)
        Profiles.append(Profile.raji)
        Profiles.append(Profile.baige)
    }
    
}
