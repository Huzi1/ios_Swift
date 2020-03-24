//
//  Player_REST.swift
//  iOS-NBA-APP
//
//  Created by Rudhrakumar Gurunathan on 17/09/19.
//  Copyright © 2019 茆大蔚. All rights reserved.
//

import Foundation
import UIKit

class Player_REST{
    
    private var _players:[Player] = []
    
    let myTeam = Team.Hawks;
    
    var delegate:Refresh?
    
    private let session = URLSession.shared
    
    private let base_url:String =
    "https://www.balldontlie.io/api/v1/players/"
    private let paramID:Int = 0
    
    var players:[Player]{
        return _players
    }
    
    func loadPlayers(){
        //getPlayer(withPlayerID: 0);
        
        _players = []
        
        let url = base_url ;
        guard let escapeAddress = url.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed) else{
            return
        }
        
        if let url = URL(string: escapeAddress){
            let request = URLRequest(url: url)
            getData(request, element: "results")
        }
    }
    
    func getPlayer(withPlayerID:Int){
        _players = []
        
        let url = base_url + String(paramID) + String(withPlayerID)
        guard let escapeAddress = url.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed) else{
            return
        }
        
        if let url = URL(string: escapeAddress){
            let request = URLRequest(url: url)
            getData(request, element: "results")
        }
    } //.getPlayer
    
    private func getData(_ request: URLRequest, element: String){
        let defaultSession = URLSession(configuration: .default);
        
        self._players.removeAll();
        _players = []
        let task = defaultSession.dataTask(with: request, completionHandler: {
            data, response, downloadError in
            
            if let error = downloadError{
                print(error)
            }else{
                var parasedResult: Any! = nil
                do{
                    parasedResult = try JSONSerialization.jsonObject(with: data!,
                                                                     options: JSONSerialization.ReadingOptions.allowFragments)
                }catch{print()}
                let result = parasedResult as! [String:Any]
                // print(result)
                
                let allPlayers = result["data"] as! [[String:Any]]
                // print(allPlayers)
                
                
                
                if allPlayers.count > 0{
                    for p in allPlayers{
                        
                        let playerID = p["id"] as! Int
                        let first_name = p["first_name"] as! String
                        let last_name = p["last_name"] as! String
                        var height_feet = 0;
                        var height_inches = 0
                        var weight_pounds = 0
                        let playerimage = UIImage(named: "noimage")!
                        
                        if (p["height_feet"] as? String) != nil
                        {
                            height_feet = p["height_feet"] as! Int
                        }
                        
                        if (p["height_inches"] as? String) != nil {
                            height_inches = p["height_inches"] as! Int
                        }
                        
                        if (p["weight_pounds"] as? String) != nil {
                            weight_pounds = p["weight_pounds"] as! Int
                        }
                        
                        var currentTeam = ""
                        
                        if let nestedDictionary = p["team"] as? [String: Any] {
                            
                            if let teamName = nestedDictionary["name"] as? String?
                            {
                                currentTeam = Team (rawValue: teamName!)!.rawValue;
                            }
                        }
                        
                        let player = Player(playerID: playerID, first_name: first_name, last_name: last_name, team: Team(rawValue: currentTeam)!, height_feet: height_feet, height_inches: height_inches , weight_pounds: weight_pounds, playerImage: playerimage )
                        
                        self._players.append(player)
                    }
                }
                DispatchQueue.main.async {
                    self.delegate?.updateUI()
                }
            }
        })
        task.resume()
        
    } //.getData
    
    private init(){
        //loadPlayers();
    }
    
    static let shared = Player_REST()
}
