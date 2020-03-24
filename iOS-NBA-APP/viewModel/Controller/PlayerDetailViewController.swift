//
//  PlayerDetailViewController.swift
//  iOS-NBA-APP
//
//  Created by Rudhrakumar Gurunathan on 17/09/19.
//  Copyright © 2019 茆大蔚. All rights reserved.
//

import UIKit

class PlayerDetailViewController: UIViewController , Refresh {
    
    
    @IBOutlet weak var playerImage: UIImageView!
    @IBOutlet weak var teamImage: UIImageView!
    @IBOutlet weak var playerName: UILabel!
    @IBOutlet weak var teamName: UILabel!
    
    
    @IBOutlet weak var lblHgt: UILabel!
    @IBOutlet weak var lblWgt: UILabel!
    @IBOutlet weak var lblPts: UILabel!
    @IBOutlet weak var lblReb: UILabel!
    @IBOutlet weak var lblBlk: UILabel!
    @IBOutlet weak var lblAst: UILabel!
    @IBOutlet weak var lblPf: UILabel!
    @IBOutlet weak var lblMin: UILabel!
    @IBOutlet weak var lblGames: UILabel!
    @IBOutlet weak var lblSeason: UILabel!
    
    
    
    private var playerViewModel = PlayerViewModel()
    private var playerDetailsViewModel = PlayerDetailViewModel()
    
    var playerId:Int?
    // private var selectedPlayer : Player?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // let playerData = playerViewModel.getPlayers(byIndex: playerId!)
        
        updateUI() ;
        
    }
    
    
    
    func updateUI() {
        
        let playerDetailItems = playerDetailsViewModel.getPlayerDetails(byIndex: playerId!)
        let playerItem = playerViewModel.getPlayersById(playerId: playerId!)
        if let player = playerItem {
            playerName.text = player.getFirstName() + " " + player.getLastName()
            
            teamName.text = player.getTeam().fullname
            teamImage.image = UIImage(named: player.getTeam().imagename )
            playerImage.image = player.getPlayerImage()
        }
        
        
        
        //        playerImage.image = playerDetailsViewModel.getImageFor(first_name: playerItem.first_name, last_name: playerItem.last_name)
        
        let games_played = playerDetailItems.games_played
        if games_played != 0{
            lblGames.text = String(games_played)
        }else{
            lblGames.text = "0"
        }
        
        let season = playerDetailItems.season
        if season != 0{
            lblSeason.text = String(season)
        }else{
            lblSeason.text = "0"
        }
        
        let feet = playerDetailItems.height_feet
        let inches = playerDetailItems.height_inches
        if  feet != 0 && inches != 0 {
            lblHgt.text = String(feet) + " " + String(inches)
        }else{
            lblHgt.text = "0"
        }
        
        let weight = playerDetailItems.weight_pounds
        if weight != 0 {
            lblWgt.text = String(weight)
        }else{
            lblWgt.text = "0"
        }
        
        let pts = playerDetailItems.pts
        if pts != 0 {
            lblPts.text = String(pts)
        }else{
            lblPts.text = "0"
        }
        
        let reb = playerDetailItems.reb
        if reb != 0 {
            lblReb.text = String(reb)
        }else{
            lblReb.text = "0"
        }
        
        let blk = playerDetailItems.blk
        if blk != 0 {
            lblBlk.text = String(blk)
        }else{
            lblBlk.text = "0"
        }
        
        let ast = playerDetailItems.ast
        if ast != 0 {
            lblAst.text = String(ast)
        }else{
            lblAst.text = "0"
        }
        
        let pf = playerDetailItems.pf
        if pf != 0 {
            lblPf.text = String(pf)
        }else{
            lblPf.text = "0"
        }
        
        let min = playerDetailItems.min
        if min != nil {
            lblMin.text = String(min)
        }else{
            lblMin.text = "0"
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1;
    }
}
