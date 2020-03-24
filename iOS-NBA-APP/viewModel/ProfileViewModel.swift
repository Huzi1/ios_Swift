//
//  ProfileViewModel.swift
//  iOS-NBA-APP
//
//  Created by Rudhrakumar Gurunathan on 22/09/19.
//  Copyright © 2019 茆大蔚. All rights reserved.
//

import Foundation
import UIKit

struct ProfileViewModel{
    
    private var profileDetail:ProfileManager = ProfileManager.profileManage
    
    public mutating func getName(index: Int)-> Profile?{
        for(i, profile) in profileDetail.Profiles.enumerated(){
            if index == i{
                return profile
            }
        }
        return nil
    }
    
    
    public mutating func getImageName(index:Int)->String?{
        for (i,profile) in profileDetail.Profiles.enumerated(){
            if index == i{
                return profile.imageName
            }
        }
        return nil
    }
    
    public mutating func getProfilefromIndex(ID:Int)->Profile?{
        return  profileDetail.Profiles[ID];
        
    }
    
    public mutating func getProfilefromID(ID:Int)->Profile?{
        for profile in profileDetail.Profiles{
            if profile.profileid == ID{
                return profile
            }
        }
        return nil
    }
    public mutating func getProfileName(index:Int)->String?{
        for (i,profile) in profileDetail.Profiles.enumerated(){
            if index == i{
                return profile.rawValue
            }
        }
        return nil
    }
    public mutating func getCount()->Int{
        return profileDetail.Profiles.count
    }
    
}


