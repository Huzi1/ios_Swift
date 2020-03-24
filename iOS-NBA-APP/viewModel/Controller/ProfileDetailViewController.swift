//
//  ProfileDetailViewController.swift
//  iOS-NBA-APP
//
//  Created by Rudhrakumar Gurunathan on 22/09/19.
//  Copyright © 2019 茆大蔚. All rights reserved.
//

import UIKit

class ProfileDetailViewController: UIViewController {
    
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var position: UILabel!
    
    @IBOutlet weak var about: UITextView!
    
    var pname = ""
    var profile : Profile?
    
    var profileid:Int?
    
    override func viewDidLoad() {
        print(pname)
        super.viewDidLoad()
        
        if let details = profile{
            profileImage.image = UIImage(named: details.imageName)
            position.text = details.position
            name.text = details.name
            about.text = details.about
        }
    }
    
}
