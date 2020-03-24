//
//  PlayerTableViewController.swift
//  iOS-NBA-APP
//
//  Created by Rudhrakumar Gurunathan on 17/09/19.
//  Copyright © 2019 茆大蔚. All rights reserved.
//

import UIKit

class PlayerTableViewController: UITableViewController , Refresh   {
    
    
    func updateUI() {
        self.tableView.reloadData();
    }
    
    private var playerViewModel = PlayerViewModel()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1;
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return playerViewModel.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "PlayerTableViewCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? PlayerTableViewCell  else {
            fatalError("The dequeued cell is not an instance of PlayerTableViewCell.")
        }
        
        let playerItem = playerViewModel.getPlayers(byIndex: indexPath.row)
        cell.playerName.text = playerItem.first_name + " " + playerItem.last_name
        // cell.playerImage.image = playerViewModel.getImageFor(index: indexPath.row)
        cell.playerImage.image = playerItem.playerImage
        cell.teamName.text = playerItem.team
        cell.teamImage.image = playerItem.teamImage
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedPlayer = playerViewModel.getPlayers(byIndex: indexPath.row)
        
        let selectedPlayerID = selectedPlayer.playerid
        
        if let viewController = storyboard?.instantiateViewController(withIdentifier: "PlayerDetailViewController") as? PlayerDetailViewController {
            
            viewController.playerId = selectedPlayerID
            navigationController?.pushViewController(viewController, animated: true)
        }
        
    }
    
    
}
