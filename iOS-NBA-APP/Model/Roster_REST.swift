//
//  RosterRest.swift
//  iOS-NBA-APP
//
//  Created by 茆大蔚 on 19/9/19.
//  Copyright © 2019 茆大蔚. All rights reserved.
//

import Foundation
import UIKit

class Roster_REST{
    private var playerlist:[Player] = []
    //static let rosterREST = Roster_REST()
    private let session = URLSession.shared
    var playerManage=PlayerManager.playerManage
    var teamManage=TeamManager.teamManage
    var delegate: Refresh?
    var roster:[Player]{
        return playerlist
    }
    static let shared = Roster_REST()
    private init(){}
    func getPlayerName(rosterID:Int){
        playerlist=[]
        let headers = [
            "x-rapidapi-host": "api-nba-v1.p.rapidapi.com",
            "x-rapidapi-key": "30b3768804mshabffed704c31885p10d284jsn3605516a25cc"
        ]
        let url_roster = "https://api-nba-v1.p.rapidapi.com/players/teamId/" + String(rosterID)
        let request = NSMutableURLRequest(url: NSURL(string: url_roster)! as URL,
                                          cachePolicy: .useProtocolCachePolicy,
                                          timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, downloaderror) in
           if let error = downloaderror {
                print(error)
            } else {
                var parsedResult: Any! = nil
                do
                {
                    parsedResult = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments)
                }
                catch{
                    print()
                }
                
                let result = parsedResult as! [String:Any]
                let api = result["api"] as! [String:Any]
                let allPlayer = api["players"] as! [[String:Any]]
                if allPlayer.count > 0{
                    for p in allPlayer{
                        let first_name = p["firstName"] as! String
                        let last_name = p["lastName"] as! String
                        let player_name = first_name + "_" + last_name
                        self.getPlayerFromName(playersName: player_name)
                    }
                    DispatchQueue.main.async(execute:{
                        self.delegate?.updateUI()
                    })
                }
            }
        })
        dataTask.resume()
    }
    func getPlayerFromName(playersName:String){
        let url = "https://www.balldontlie.io/api/v1/players?search="+playersName
        let player_url = url.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)
        if let url = URL(string: player_url!){
            let request = URLRequest(url: url)
            let task = session.dataTask(with: request,completionHandler: { data, response, downloadError in
                
                if let error = downloadError
                {
                    print(error)
                }
                else{
                    var parsedResult: Any! = nil
                    do
                    {
                        parsedResult = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments)
                    }
                    catch{
                        print()
                    }
                    if let result = parsedResult{
                        let getValue: [String:Any] = result as! [String:Any]
                        let player_json = getValue["data"] as! [[String:Any]]
                        if player_json.count>0{
                            for p in player_json{
                                let first_name = p["first_name"] as! String
                                let last_name = p["last_name"] as! String
                                let playerID = p["id"] as! Int
                                let team_json = p["team"] as! [String:Any]
                                if team_json.count>0{
                                let teamid = team_json["id"] as! Int
                                    self.playerlist.append(Player.init(playerID: playerID, first_name: first_name, last_name: last_name, team: self.teamManage.getTeamfromID(ID: teamid)! ))
                    }
//                    let result = parsedResult as! [String:Any]
//                    let player_json = result["data"] as! [[String:Any]]
//                    if player_json.count>0{
//                        for p in player_json{
//                            let first_name = p["first_name"] as! String
//                            let last_name = p["last_name"] as! String
//                            let playerID = p["id"] as! Int
                            //let height_inches = p["height_inches"] as! Int?
                            //let height_feet = p["height_feet"] as! Int?
                            //let weight_pounds = p["weight_pounds"] as! Int?
//                            let team_json = p["team"] as! [String:Any]
//                            if team_json.count>0{
//                                let teamid = team_json["id"] as! Int
                                //if let hi = height_inches,let hf = height_feet, let wp = weight_pounds{
                                    //self._players.append(Player.init(playerID: playerID, first_name: first_name, last_name: last_name, team: self.teamManage.getTeamfromID(ID: teamid)!, height_feet: hf, height_inches: hi, weight_pounds: wp))
                                    //self.playerManage.addPlayer(PlayerID: playerID, first_name: first_name, last_name: last_name, team: self.teamManage.getTeamfromID(ID: teamid)!, height_feet: hf, height_inches: hi, weight_pounds: wp)
                                //}
                                //else{
                                    //self.playerlist.append(Player.init(playerID: playerID, first_name: first_name, last_name: last_name, team: self.teamManage.getTeamfromID(ID: teamid)! ))
                                    //self.playerManage.addPlayer(PlayerID: playerID, first_name: first_name, last_name: last_name, team: self.teamManage.getTeamfromID(ID: teamid)!)
                                //}
                            }
                        }
                    }
                }
            })
        task.resume()
        }
    }
    func nullToNil(value : AnyObject?) -> AnyObject? {
        if value is NSNull {
            return nil
        } else {
            return value
        }
    }
    func getPlayer(playersName:String)->Player{
        let url = "https://www.balldontlie.io/api/v1/players?search="+playersName
        let player_url = url.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)
        var p1:Player?
        if let url = URL(string: player_url!){
            let request = URLRequest(url: url)
            let task = session.dataTask(with: request,completionHandler: { data, response, downloadError in
                
                if let error = downloadError
                {
                    print(error)
                }
                else{
                    var parsedResult: Any! = nil
                    do
                    {
                        parsedResult = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments)
                    }
                    catch{
                        print()
                    }
                    let result = parsedResult as! [String:Any]
                    let player_json = result["data"] as! [[String:Any]]
                    if player_json.count>0{
                        for p in player_json{
                            let first_name = p["first_name"] as! String
                            let last_name = p["last_name"] as! String
                            let playerID = p["id"] as! Int
                            let height_inches = p["height_inches"] as! Int?
                            let height_feet = p["height_feet"] as! Int?
                            let weight_pounds = p["weight_pounds"] as! Int?
                            let team_json = p["team"] as! [String:Any]
                            let player_image = p["playerImage"] as! UIImage
                            if team_json.count>0{
                                let teamid = team_json["id"] as! Int
                                if let hi = height_inches,let hf = height_feet, let wp = weight_pounds{
                                    p1 = Player.init(playerID: playerID, first_name: first_name, last_name: last_name, team: self.teamManage.getTeamfromID(ID: teamid)!, height_feet: hf, height_inches: hi, weight_pounds: wp, playerImage: player_image)
                                }
                                else{
                                    p1 = Player.init(playerID: playerID, first_name: first_name, last_name: last_name, team: self.teamManage.getTeamfromID(ID: teamid)!)
                                }
                            }
                            
                        }
                    }
                }
            })
            task.resume()
        }
        return p1!
    }
}
