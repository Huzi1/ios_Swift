//
//  Team.swift
//  iOS-NBA-APP
//
//  Created by 茆大蔚 on 1/9/19.
//  Copyright © 2019 茆大蔚. All rights reserved.
//

import Foundation

enum Team : String{
    case Hawks = "Hawks", Celtics = "Celtics", Nets = "Nets", Hornets = "Hornets", Bulls = "Bulls", Cavaliers = "Cavaliers", Mavericks = "Mavericks", Nuggets = "Nuggets", Pistons = "Pistons", Warriors = "Warriors", Rockets = "Rockets", Pacers = "Pacers", Clippers = "Clippers", Lakers = "Lakers", Grizzlies = "Grizzlies", Heat = "Heat", Bucks = "Bucks", Timberwolves = "Timberwolves", Pelicans = "Pelicans", Knicks = "Knicks", Thunder = "Thunder", Magic = "Magic", SeventySix = "76ers", Suns = "Suns", Trail_Blazers = "Trail Blazers", Kings = "Kings", Spurs = "Spurs", Raptors = "Raptors", Jazz = "Jazz", Wizards = "Wizards"
    
    var teamid:Int{
        switch self{
        case .Hawks: return 1
        case .Celtics: return 2
        case .Nets: return 3
        case .Hornets: return 4
        case .Bulls: return 5
        case .Cavaliers: return 6
        case .Mavericks: return 7
        case .Nuggets: return 8
        case .Pistons: return 9
        case .Warriors: return 10
        case .Rockets: return 11
        case .Pacers: return 12
        case .Clippers: return 13
        case .Lakers: return 14
        case .Grizzlies: return 15
        case .Heat: return 16
        case .Bucks: return 17
        case .Timberwolves: return 18
        case .Pelicans: return 19
        case .Knicks: return 20
        case .Thunder: return 21
        case .Magic: return 22
        case .SeventySix: return 23
        case .Suns: return 24
        case .Trail_Blazers: return 25
        case .Kings: return 26
        case .Spurs: return 27
        case .Raptors: return 28
        case .Jazz: return 29
        case .Wizards: return 30
        }
    }
    
    var abbreviation:String{
        switch self{
        case .Hawks: return "ATL"
        case .Celtics: return "BOS"
        case .Nets: return "BKN"
        case .Hornets: return "CHA"
        case .Bulls: return "CHI"
        case .Cavaliers: return "CLE"
        case .Mavericks: return "DAL"
        case .Nuggets: return "DEN"
        case .Pistons: return "DET"
        case .Warriors: return "GSW"
        case .Rockets: return "HOU"
        case .Pacers: return "IND"
        case .Clippers: return "LAC"
        case .Lakers: return "LAL"
        case .Grizzlies: return "MEM"
        case .Heat: return "MIA"
        case .Bucks: return "MIL"
        case .Timberwolves: return "MIN"
        case .Pelicans: return "NOP"
        case .Knicks: return "NYK"
        case .Thunder: return "OKC"
        case .Magic: return "ORL"
        case .SeventySix: return "PHI"
        case .Suns: return "PHX"
        case .Trail_Blazers: return "POR"
        case .Kings: return "SAC"
        case .Spurs: return "SAS"
        case .Raptors: return "TOR"
        case .Jazz: return "UTA"
        case .Wizards: return "WAS"
        }
    }
    var city:String{
        switch self{
        case .Hawks: return "Atlanta"
        case .Celtics: return "Boston"
        case .Nets: return "Brooklyn"
        case .Hornets: return "Charlotte"
        case .Bulls: return "Chicago"
        case .Cavaliers: return "Cleveland"
        case .Mavericks: return "Dallas"
        case .Nuggets: return "Denver"
        case .Pistons: return "Detroit"
        case .Warriors: return "Golden State"
        case .Rockets: return "Houston"
        case .Pacers: return "Indiana"
        case .Clippers: return "Los Angeles"
        case .Lakers: return "Los Angeles"
        case .Grizzlies: return "Memphis"
        case .Heat: return "Miami"
        case .Bucks: return "Milwaukee"
        case .Timberwolves: return "Minnesota"
        case . Pelicans: return "New Orleans"
        case .Knicks: return "New York"
        case .Thunder: return "Oklahoma City"
        case .Magic: return "Orlando"
        case .SeventySix: return "Philadelphia"
        case .Suns: return "Phoenix"
        case .Trail_Blazers: return "Portland"
        case .Kings: return "Sacramento"
        case .Spurs: return "San Antonio"
        case .Raptors: return "Toronto"
        case .Jazz: return "Utah"
        case .Wizards: return "Washington"
        }
    }
    var conference:String{
        switch self{
        case .Hawks, .Celtics, .Nets, .Hornets, .Bulls, .Cavaliers, .Pistons, .Pacers,  .Heat, .Bucks, .Knicks, .Magic, .SeventySix, .Raptors, .Wizards : return "East"
        case .Mavericks, .Nuggets, .Warriors, .Rockets, .Clippers, .Lakers, .Grizzlies, .Timberwolves, .Pelicans, .Thunder, .Suns, .Trail_Blazers, .Kings, .Spurs, .Jazz : return "West"
        }
    }
    var division:String{
        switch self{
        case .Hawks, .Hornets, .Heat, .Magic, .Wizards: return "Southeast"
        case .Celtics, .Nets, .Knicks, .SeventySix, .Raptors: return "Altlantic"
        case .Bulls, .Cavaliers, .Pistons, .Pacers, .Bucks: return "Central"
        case .Mavericks, .Rockets, .Grizzlies, .Pelicans, .Spurs: return "Southwest"
        case .Nuggets, .Timberwolves, .Thunder, .Trail_Blazers, .Jazz: return "Northwest"
        case .Warriors, .Clippers, .Lakers, .Suns, .Kings: return "Pacific"
        }
    }
    var fullname:String{
        switch self{
        case .Hawks: return "Atlanta Hawks"
        case .Celtics: return "Boston Celtics"
        case .Nets: return "Brooklyn Nets"
        case .Hornets: return "Charlotte Hornets"
        case .Bulls: return "Chicago Bulls"
        case .Cavaliers: return "Cleveland Cavaliers"
        case .Mavericks: return "Dallas Mavericks"
        case .Nuggets: return "Denver Nuggets"
        case .Pistons: return "Detroit Pistons"
        case .Warriors: return "Golden State Warriors"
        case .Rockets: return "Houston Rockets"
        case .Pacers: return "Indiana Pacers"
        case .Clippers: return "Los Angeles Clippers"
        case .Lakers: return "Los Angeles Lakers"
        case .Grizzlies: return "Memphis Grizzlies"
        case .Heat: return "Miami Heat"
        case .Bucks: return "Milwaukee Bucks"
        case .Timberwolves: return "Minnesota Timberwolves"
        case .Pelicans: return "New Orleans Pelicans"
        case .Knicks: return "New York Knicks"
        case .Thunder: return "Oklahoma City Thunder"
        case .Magic: return "Orlando Magic"
        case .SeventySix: return "Philadelphia 76ers"
        case .Suns: return "Phoenix Suns"
        case .Trail_Blazers: return "Portland Trail Blazers"
        case .Kings: return "Sacramento Kings"
        case .Spurs: return "San Antonio Spurs"
        case .Raptors: return "Toronto Raptors"
        case .Jazz: return "Utah Jazz"
        case .Wizards: return "Washington Wizards"
        }
    }
    var imagename:String{
        switch self{
        case .Hawks: return "hawks"
        case .Celtics: return "celtics"
        case .Nets: return "nets"
        case .Hornets: return "hornets"
        case .Bulls: return "bulls"
        case .Cavaliers: return "cavaliers"
        case .Mavericks: return "mavericks"
        case .Nuggets: return "nuggets"
        case .Pistons: return "pistons"
        case .Warriors: return "warriors"
        case .Rockets: return "rockets"
        case .Pacers: return "pacers"
        case .Clippers: return "clippers"
        case .Lakers: return "lakers"
        case .Grizzlies: return "grizzlies"
        case .Heat: return "heat"
        case .Bucks: return "bucks"
        case .Timberwolves: return "timberwolves"
        case .Pelicans: return "pelicans"
        case .Knicks: return "knicks"
        case .Thunder: return "thunder"
        case .Magic: return "magic"
        case .SeventySix: return "76ers"
        case .Suns: return "suns"
        case .Trail_Blazers: return "trail_blazers"
        case .Kings: return "kings"
        case .Spurs: return "spurs"
        case .Raptors: return "raptors"
        case .Jazz: return "jazz"
        case .Wizards: return "wizards"
        }
    }
    var roster:[String]{
        switch self{
        case .Hawks: return ["Trae Young","Evan Turner","Ray Spalding","Cameron Reddish","Chandler Parsons","Jabari Parker","Alex Len","Damian Jones","Kevin Huerter","Brandon Goodwin","DeAndre' Bembry","John Collins","Allen Crabbe","Marcus Derrickson","Bruno Fernando"]
        case .Celtics: return ["Trae Young","Evan Turner","Ray Spalding","Cameron Reddish","Chandler Parsons","Jabari Parker","Alex Len","Damian Jones","Kevin Huerter","Brandon Goodwin","DeAndre' Bembry","John Collins","Allen Crabbe","Marcus Derrickson","Bruno Fernando"]
        case .Nets: return ["Trae Young","Evan Turner","Ray Spalding","Cameron Reddish","Chandler Parsons","Jabari Parker","Alex Len","Damian Jones","Kevin Huerter","Brandon Goodwin","DeAndre' Bembry","John Collins","Allen Crabbe","Marcus Derrickson","Bruno Fernando"]
        case .Hornets: return ["Trae Young","Evan Turner","Ray Spalding","Cameron Reddish","Chandler Parsons","Jabari Parker","Alex Len","Damian Jones","Kevin Huerter","Brandon Goodwin","DeAndre' Bembry","John Collins","Allen Crabbe","Marcus Derrickson","Bruno Fernando"]
        case .Bulls: return ["Trae Young","Evan Turner","Ray Spalding","Cameron Reddish","Chandler Parsons","Jabari Parker","Alex Len","Damian Jones","Kevin Huerter","Brandon Goodwin","DeAndre' Bembry","John Collins","Allen Crabbe","Marcus Derrickson","Bruno Fernando"]
        case .Cavaliers: return ["Trae Young","Evan Turner","Ray Spalding","Cameron Reddish","Chandler Parsons","Jabari Parker","Alex Len","Damian Jones","Kevin Huerter","Brandon Goodwin","DeAndre' Bembry","John Collins","Allen Crabbe","Marcus Derrickson","Bruno Fernando"]
        case .Mavericks: return ["Trae Young","Evan Turner","Ray Spalding","Cameron Reddish","Chandler Parsons","Jabari Parker","Alex Len","Damian Jones","Kevin Huerter","Brandon Goodwin","DeAndre' Bembry","John Collins","Allen Crabbe","Marcus Derrickson","Bruno Fernando"]
        case .Nuggets: return ["Trae Young","Evan Turner","Ray Spalding","Cameron Reddish","Chandler Parsons","Jabari Parker","Alex Len","Damian Jones","Kevin Huerter","Brandon Goodwin","DeAndre' Bembry","John Collins","Allen Crabbe","Marcus Derrickson","Bruno Fernando"]
        case .Pistons: return ["Trae Young","Evan Turner","Ray Spalding","Cameron Reddish","Chandler Parsons","Jabari Parker","Alex Len","Damian Jones","Kevin Huerter","Brandon Goodwin","DeAndre' Bembry","John Collins","Allen Crabbe","Marcus Derrickson","Bruno Fernando"]
        case .Warriors: return ["Trae Young","Evan Turner","Ray Spalding","Cameron Reddish","Chandler Parsons","Jabari Parker","Alex Len","Damian Jones","Kevin Huerter","Brandon Goodwin","DeAndre' Bembry","John Collins","Allen Crabbe","Marcus Derrickson","Bruno Fernando"]
        case .Rockets: return ["Trae Young","Evan Turner","Ray Spalding","Cameron Reddish","Chandler Parsons","Jabari Parker","Alex Len","Damian Jones","Kevin Huerter","Brandon Goodwin","DeAndre' Bembry","John Collins","Allen Crabbe","Marcus Derrickson","Bruno Fernando"]
        case .Pacers: return ["Trae Young","Evan Turner","Ray Spalding","Cameron Reddish","Chandler Parsons","Jabari Parker","Alex Len","Damian Jones","Kevin Huerter","Brandon Goodwin","DeAndre' Bembry","John Collins","Allen Crabbe","Marcus Derrickson","Bruno Fernando"]
        case .Clippers: return ["Trae Young","Evan Turner","Ray Spalding","Cameron Reddish","Chandler Parsons","Jabari Parker","Alex Len","Damian Jones","Kevin Huerter","Brandon Goodwin","DeAndre' Bembry","John Collins","Allen Crabbe","Marcus Derrickson","Bruno Fernando"]
        case .Lakers: return ["Trae Young","Evan Turner","Ray Spalding","Cameron Reddish","Chandler Parsons","Jabari Parker","Alex Len","Damian Jones","Kevin Huerter","Brandon Goodwin","DeAndre' Bembry","John Collins","Allen Crabbe","Marcus Derrickson","Bruno Fernando"]
        case .Grizzlies: return ["Trae Young","Evan Turner","Ray Spalding","Cameron Reddish","Chandler Parsons","Jabari Parker","Alex Len","Damian Jones","Kevin Huerter","Brandon Goodwin","DeAndre' Bembry","John Collins","Allen Crabbe","Marcus Derrickson","Bruno Fernando"]
        case .Heat: return ["Trae Young","Evan Turner","Ray Spalding","Cameron Reddish","Chandler Parsons","Jabari Parker","Alex Len","Damian Jones","Kevin Huerter","Brandon Goodwin","DeAndre' Bembry","John Collins","Allen Crabbe","Marcus Derrickson","Bruno Fernando"]
        case .Bucks: return ["Trae Young","Evan Turner","Ray Spalding","Cameron Reddish","Chandler Parsons","Jabari Parker","Alex Len","Damian Jones","Kevin Huerter","Brandon Goodwin","DeAndre' Bembry","John Collins","Allen Crabbe","Marcus Derrickson","Bruno Fernando"]
        case .Timberwolves: return ["Trae Young","Evan Turner","Ray Spalding","Cameron Reddish","Chandler Parsons","Jabari Parker","Alex Len","Damian Jones","Kevin Huerter","Brandon Goodwin","DeAndre' Bembry","John Collins","Allen Crabbe","Marcus Derrickson","Bruno Fernando"]
        case .Pelicans: return ["Trae Young","Evan Turner","Ray Spalding","Cameron Reddish","Chandler Parsons","Jabari Parker","Alex Len","Damian Jones","Kevin Huerter","Brandon Goodwin","DeAndre' Bembry","John Collins","Allen Crabbe","Marcus Derrickson","Bruno Fernando"]
        case .Knicks: return ["Trae Young","Evan Turner","Ray Spalding","Cameron Reddish","Chandler Parsons","Jabari Parker","Alex Len","Damian Jones","Kevin Huerter","Brandon Goodwin","DeAndre' Bembry","John Collins","Allen Crabbe","Marcus Derrickson","Bruno Fernando"]
        case .Thunder: return ["Trae Young","Evan Turner","Ray Spalding","Cameron Reddish","Chandler Parsons","Jabari Parker","Alex Len","Damian Jones","Kevin Huerter","Brandon Goodwin","DeAndre' Bembry","John Collins","Allen Crabbe","Marcus Derrickson","Bruno Fernando"]
        case .Magic: return ["Trae Young","Evan Turner","Ray Spalding","Cameron Reddish","Chandler Parsons","Jabari Parker","Alex Len","Damian Jones","Kevin Huerter","Brandon Goodwin","DeAndre' Bembry","John Collins","Allen Crabbe","Marcus Derrickson","Bruno Fernando"]
        case .SeventySix: return ["Trae Young","Evan Turner","Ray Spalding","Cameron Reddish","Chandler Parsons","Jabari Parker","Alex Len","Damian Jones","Kevin Huerter","Brandon Goodwin","DeAndre' Bembry","John Collins","Allen Crabbe","Marcus Derrickson","Bruno Fernando"]
        case .Suns: return ["Trae Young","Evan Turner","Ray Spalding","Cameron Reddish","Chandler Parsons","Jabari Parker","Alex Len","Damian Jones","Kevin Huerter","Brandon Goodwin","DeAndre' Bembry","John Collins","Allen Crabbe","Marcus Derrickson","Bruno Fernando"]
        case .Trail_Blazers: return ["Trae Young","Evan Turner","Ray Spalding","Cameron Reddish","Chandler Parsons","Jabari Parker","Alex Len","Damian Jones","Kevin Huerter","Brandon Goodwin","DeAndre' Bembry","John Collins","Allen Crabbe","Marcus Derrickson","Bruno Fernando"]
        case .Kings: return ["Trae Young","Evan Turner","Ray Spalding","Cameron Reddish","Chandler Parsons","Jabari Parker","Alex Len","Damian Jones","Kevin Huerter","Brandon Goodwin","DeAndre' Bembry","John Collins","Allen Crabbe","Marcus Derrickson","Bruno Fernando"]
        case .Spurs: return ["Trae Young","Evan Turner","Ray Spalding","Cameron Reddish","Chandler Parsons","Jabari Parker","Alex Len","Damian Jones","Kevin Huerter","Brandon Goodwin","DeAndre' Bembry","John Collins","Allen Crabbe","Marcus Derrickson","Bruno Fernando"]
        case .Raptors: return ["Trae Young","Evan Turner","Ray Spalding","Cameron Reddish","Chandler Parsons","Jabari Parker","Alex Len","Damian Jones","Kevin Huerter","Brandon Goodwin","DeAndre' Bembry","John Collins","Allen Crabbe","Marcus Derrickson","Bruno Fernando"]
        case .Jazz: return ["Trae Young","Evan Turner","Ray Spalding","Cameron Reddish","Chandler Parsons","Jabari Parker","Alex Len","Damian Jones","Kevin Huerter","Brandon Goodwin","DeAndre' Bembry","John Collins","Allen Crabbe","Marcus Derrickson","Bruno Fernando"]
        case .Wizards: return ["Trae Young","Evan Turner","Ray Spalding","Cameron Reddish","Chandler Parsons","Jabari Parker","Alex Len","Damian Jones","Kevin Huerter","Brandon Goodwin","DeAndre' Bembry","John Collins","Allen Crabbe","Marcus Derrickson","Bruno Fernando"]
        }
    }
    var rosterID:Int{
        switch self{
        case .Hawks: return 1
        case .Celtics: return 2
        case .Nets: return 4
        case .Hornets: return 5
        case .Bulls: return 6
        case .Cavaliers: return 7
        case .Mavericks: return 8
        case .Nuggets: return 9
        case .Pistons: return 10
        case .Warriors: return 11
        case .Rockets: return 14
        case .Pacers: return 15
        case .Clippers: return 16
        case .Lakers: return 17
        case .Grizzlies: return 19
        case .Heat: return 20
        case .Bucks: return 21
        case .Timberwolves: return 22
        case .Pelicans: return 23
        case .Knicks: return 24
        case .Thunder: return 25
        case .Magic: return 26
        case .SeventySix: return 27
        case .Suns: return 28
        case .Trail_Blazers: return 29
        case .Kings: return 30
        case .Spurs: return 31
        case .Raptors: return 38
        case .Jazz: return 40
        case .Wizards: return 41
        }
    }
}
