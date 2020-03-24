//
//  PlayerDetail_REST.swift
//  iOS-NBA-APP
//
//  Created by Rudhrakumar Gurunathan on 17/09/19.
//  Copyright © 2019 茆大蔚. All rights reserved.
//

import Foundation

class PlayerDetail_REST{
    
    var playersDetails : PlayerDetail?;
    
    var delegate: Refresh?
    
    func getDetailData(playerId : Int){
        
        let base_session_average_url:String =
        "https://www.balldontlie.io/api/v1/season_averages?player_ids[]="
        
        let url = base_session_average_url +  String(playerId)
        guard let escapeAddress = url.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed) else{
            return
        } // .getDetailData
        
        if let url = URL(string: escapeAddress){
            let request = URLRequest(url: url)
            
            let defaultSession = URLSession(configuration: .default);
            
            let task = defaultSession.dataTask(with: request, completionHandler: {
                data, response, downloadError in
                
                if let error = downloadError{
                    print(error)
                }
                else
                {
                    var parasedResult: Any! = nil
                    do{
                        parasedResult = try JSONSerialization.jsonObject(with: data!,
                                                                         options: JSONSerialization.ReadingOptions.allowFragments)
                    }catch{print()}
                    let result = parasedResult as! [String:Any]
                    // print(result)
                    
                    let playerDetail = result["data"] as! [[String:Any]]
                    // print(allPlayers)
                    
                    if playerDetail.count > 0{
                        for p in playerDetail{
                            let games_played = p["games_played"] as! Int
                            let season = p["season"] as! Int
                            let pts = p["pts"] as! Double
                            let reb = p["reb"] as! Double
                            let ast = p["ast"] as! Double
                            let blk = p["blk"] as! Double
                            let pf = p["pf"] as! Double
                            let min = p["min"] as! String
                            
                            let playerdetail = PlayerDetail(playerID: playerId, games_played: games_played, season: season, pts: pts, reb: reb, ast: ast, blk: blk, pf: pf, min: min)
                            
                            self.playersDetails = playerdetail;
                        }
                    }
                }
                DispatchQueue.main.async {
                    self.delegate?.updateUI()
                }
            })
            task.resume()
        }
    }
    static let shared = PlayerDetail_REST()
}


