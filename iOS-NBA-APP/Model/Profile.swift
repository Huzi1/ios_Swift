//
//  Profile.swift
//  iOS-NBA-APP
//
//  Created by Rudhrakumar Gurunathan on 22/09/19.
//  Copyright © 2019 茆大蔚. All rights reserved.
//

import Foundation

enum Profile:String{
    case david = "David", huzaifa = "Huzaifa", raji = "Raji", baige = "Baige", unknown = "moimage"
    
    
    var name:String{
        switch self{
        case .david: return "David"
        case .huzaifa: return "Huzaifa"
        case .raji: return "Raji"
        case .baige: return "Baige"
        case .unknown: return "No Name"
        }
    }
    
    var profileid:Int{
        switch self{
        case .david: return 1
        case .huzaifa: return 2
        case .raji: return 3
        case .baige: return 4
        case .unknown: return 5
        }
    }
    var position:String{
        switch self{
        case .david: return "Project Manager"
        case .huzaifa: return "Team Lead"
        case .raji: return "Developer"
        case .baige: return "Tester"
        case .unknown: return "No Message"
        }
    }
    
    var imageName:String{
        switch self{
        case .david: return "david"
        case .huzaifa: return "huzaifa"
        case .raji: return "raji"
        case .baige: return "baige"
        case .unknown: return "No Message"
        }
    }
    
    var about:String{
        switch self{
        case .david: return """
            Hi, \n\n
            David is a Project Manager
            """
        case .huzaifa: return """
              Hi, \n\n
            Huzaifa is a Team Leader
            """
        case .raji: return """
             Hi, \n\n
            Raji is a Developer
            """
        case .baige: return """
             Hi, \n\n
            Baige is a Tester
            """
        case .unknown: return "No Description"
        }
    }
}
