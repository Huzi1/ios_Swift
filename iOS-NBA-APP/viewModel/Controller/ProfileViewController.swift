//
//  ProfileViewController.swift
//  iOS-NBA-APP
//
//  Created by Rudhrakumar Gurunathan on 22/09/19.
//  Copyright © 2019 茆大蔚. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    // View
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    
    // View Model
    private var profileViewModel = ProfileViewModel()
    
    var details: (image: UIImage?, name: String, position: String, about: String )?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func  collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        
        let currentProfile = profileViewModel.getProfilefromID(ID: indexPath.row)
        //print(pid as Any)
        let pvc = storyboard?.instantiateViewController(withIdentifier: "ProfileDetailViewController" ) as? ProfileDetailViewController
       
        pvc?.profile = currentProfile;
        
        self.navigationController?.pushViewController(pvc!, animated: true)
        
    }
    
}

extension ProfileViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? ProfileCollectionViewCell
        
        
        cell?.imageView.image = UIImage(named: profileViewModel.getImageName(index: indexPath.row)!)
        cell?.name.text = profileViewModel.getProfileName(index: indexPath.row)
        
        return cell!
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return profileViewModel.getCount()
    }
}

extension ProfileViewController: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let bounds = collectionView.bounds
        
        return CGSize(width:bounds.width/3 - 10, height: bounds.height/4)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    private func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
