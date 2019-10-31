//
//  CustomCollectionViewCell.swift
//  Instagram
//
//  Created by Азат Султанов on 29.10.2019.
//  Copyright © 2019 Прокопьев Павел. All rights reserved.
//

import UIKit

protocol CustomCell {
    static func cellIdentifier() -> String
    
    static func cellNib() -> UINib
}

class CustomCollectionViewCell: UICollectionViewCell, CustomCell {

    @IBOutlet weak var imageVIew: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    var photo: String? {
        didSet {
            imageVIew.image = UIImage(named: photo!)
        }
    }
    
    // MARK: - CustomCell
    
    static func cellIdentifier() -> String {
        return String(describing: self)
    }
    
    static func cellNib() -> UINib {
        return UINib(nibName: String(describing: self), bundle: nil)
    }

}
