//
//  Extension.swift
//  Instagram
//
//  Created by Азат Султанов on 29.10.2019.
//  Copyright © 2019 Прокопьев Павел. All rights reserved.
//

import Foundation
import UIKit


extension UICollectionView {
    func registerCustomCell(_ cell: CustomCell.Type) {
        self.register(cell.cellNib(), forCellWithReuseIdentifier: cell.cellIdentifier())
        
    }
    
}
