//
//  ProfileCollectionViewController.swift
//  iOS-NBA-APP
//
//  Created by Rudhrakumar Gurunathan on 22/09/19.
//  Copyright © 2019 茆大蔚. All rights reserved.
//

import UIKit

private let reuseIdentifier = "profilecollectionviewcell"

class ProfileCollectionViewController: UICollectionViewController {
    
    // View Model
    private var profileViewModel = ProfileViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        guard let cell = sender as? UICollectionViewCell, let indexPath = self.collectionView?.indexPath(for: cell) else {return}
        if let destination = segue.destination as? ProfileDetailViewController{
            
            let selectedProfile = profileViewModel.getProfilefromIndex(ID: indexPath.row);
            destination.profile = selectedProfile
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return profileViewModel.getCount();
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        let imageView = cell.viewWithTag(3011) as? UIImageView
        
        let profile = profileViewModel.getProfilefromIndex(ID: indexPath.row);
        
        imageView?.image = UIImage(named: profile!.imageName)
        
        let lblProfileName = cell.viewWithTag(3010) as? UILabel
        
        if let profileName = lblProfileName{
            profileName.text =  profile?.name
            
        }
        return cell
    }
}
