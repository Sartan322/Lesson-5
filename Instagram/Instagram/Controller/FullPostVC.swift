//
//  FullPostVC.swift
//  Instagram
//
//  Created by Азат Султанов on 30.10.2019.
//  Copyright © 2019 Прокопьев Павел. All rights reserved.
//

import UIKit

class FullPostVC: UIViewController {
    
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var bigImage: UIImageView!
    
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var loginLabel: UILabel!
    
    var letter: Letter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        avatarImage.image = UIImage(named: letter!.avatar)
        bigImage.image = UIImage(named: letter!.photo)
        commentLabel.text = letter!.text
        loginLabel.text = letter!.login
    }
    
}
