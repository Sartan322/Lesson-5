//
//  User.swift
//  Instagram
//
//  Created by Азат Султанов on 29.10.2019.
//  Copyright © 2019 Прокопьев Павел. All rights reserved.
//

import Foundation

class User{
    var login: String
    var avatar: String
    var status: String
    var photos: [Post] = []
    var followers: Int
    var following: Int
    init() {
        login = "pavlusha.88"
        avatar = "avatar1"
        status = "money long"
        followers = 99
        following = 207
        photos.append(Post(photo: "photo1", text: ""))
        photos.append(Post(photo: "photo3", text: "цветочек"))
        photos.append(Post(photo: "photo3", text: ""))
        photos.append(Post(photo: "photo4", text: "a"))
        photos.append(Post(photo: "photo5", text: "a"))
        photos.append(Post(photo: "photo6", text: "a"))
        photos.append(Post(photo: "photo7", text: "a"))
        photos.append(Post(photo: "photo8", text: "a"))


    }
    
}

class Post{
    var photo: String
    var text: String
    init(photo: String, text: String) {
        self.photo = photo
        self.text = text
    }
}

class Letter {
    var avatar: String
    var photo: String
    var text: String = ""
    var login: String
    
    init(avatar: String, photo: String, text: String, login: String) {
        self.avatar = avatar
        self.photo = photo
        self.text = text
        self.login = login
    }
    
}
