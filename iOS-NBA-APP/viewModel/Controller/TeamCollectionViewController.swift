//
//  TeamGeneralCollectionViewController.swift
//  iOS-NBA-APP
//
//  Created by 茆大蔚 on 10/9/19.
//  Copyright © 2019 茆大蔚. All rights reserved.
//

import UIKit

private let reuseIdentifier = "TeamCell"

class TeamCollectionViewController: UICollectionViewController {
    private var TeamviewModel = TeamViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        guard let cell = sender as? UICollectionViewCell, let indexPath = self.collectionView?.indexPath(for: cell) else {return}
        if let destination = segue.destination as? TeamDetailViewController{
            let selectedTeam = TeamviewModel.getTeam(index: indexPath.row)
            destination.selectedTeam = selectedTeam
        }
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return TeamviewModel.getCount()
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        let imageView = cell.viewWithTag(2000) as? UIImageView
        let teamTitle = cell.viewWithTag(2001) as? UILabel
        if let imageView = imageView, let teamTitle = teamTitle{
            imageView.image = UIImage(named:TeamviewModel.getImageName(index: indexPath.row)!)
            teamTitle.text = TeamviewModel.getTeamName(index: indexPath.row)!
        }
        return cell
    }
}
