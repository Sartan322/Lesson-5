//
//  MainPageVC.swift
//  Instagram
//
//  Created by Азат Султанов on 29.10.2019.
//  Copyright © 2019 Прокопьев Павел. All rights reserved.
//

import UIKit

class MainPageVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    let fullPostIdent: String = "fullPostIdentifier"
    
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var following: UILabel!
    @IBOutlet weak var followers: UILabel!
    @IBOutlet weak var countOfPhoto: UILabel!
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var user: User = User()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        avatarImage.image = UIImage(named: user.avatar)
        avatarImage.layer.cornerRadius = avatarImage.frame.height / 2
        countOfPhoto.text = String(user.photos.count)
        loginLabel.text = user.login
        following.text = String(user.following)
        followers.text = String(user.followers)
        statusLabel.text = user.status
        collectionView.registerCustomCell(CustomCollectionViewCell.self)
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // Compute the dimension of a cell for an NxN layout with space S between
        // cells.  Take the collection view width, subtract (N-1)*S points for
        // the spaces between the cells, and then divide by N to find the final
        // dimension for the cell width and height.

        let cellsAcross: CGFloat = 3
        let spaceBetweenCells: CGFloat = 1
        let dim = (collectionView.bounds.width - (cellsAcross - 1) * spaceBetweenCells) / cellsAcross
        return CGSize(width: dim, height: dim)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    // MARK: - UICollectionViewDelegaten
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return user.photos.count
    }
    
    // MARK: - UICollectionViewDataSource
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.cellIdentifier(), for: indexPath) as! CustomCollectionViewCell
        
        cell.photo = user.photos[indexPath.row].photo
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == fullPostIdent, let letter = sender as? Letter {
            let destController = segue.destination as! FullPostVC
            destController.letter = letter

        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let model = Letter(avatar: user.avatar, photo: user.photos[indexPath.row].photo, text: user.photos[indexPath.row].text, login: user.login)
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        performSegue(withIdentifier: fullPostIdent, sender: model)
    }


}
