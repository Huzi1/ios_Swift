//
//  TeamDetailViewController.swift
//  iOS-NBA-APP
//
//  Created by 茆大蔚 on 13/9/19.
//  Copyright © 2019 茆大蔚. All rights reserved.
//

import UIKit

class TeamDetailViewController: UIViewController, UITableViewDataSource,Refresh {
    @IBOutlet weak var rosterlist: UITableView!
    var selectedTeam:Team?
    //private var rosterModel=TeamDetailViewModel()
    private var players:[String]=[]
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var conference: UILabel!
    @IBOutlet weak var division: UILabel!
    @IBOutlet weak var abbreviation: UILabel!
    @IBOutlet weak var teamImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        rosterlist.dataSource = self
        //rosterModel.delegate=self
        if let selectedTeam = selectedTeam{
            teamImage.image = UIImage(named: selectedTeam.imagename)
            name.text = selectedTeam.fullname
            conference.text = selectedTeam.conference
            city.text = selectedTeam.city
            abbreviation.text = selectedTeam.abbreviation
            division.text = selectedTeam.division
            //players = rosterModel.getRoster(rosterID: selectedTeam.rosterID)
            players = selectedTeam.roster
        }
    // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = rosterlist.dequeueReusableCell(withIdentifier: "rostercell", for: indexPath)
        cell.textLabel?.text = players[indexPath.row]
        return cell
    }
    func updateUI() {
        self.rosterlist.reloadData();
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
