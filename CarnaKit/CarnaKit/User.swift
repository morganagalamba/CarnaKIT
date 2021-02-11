//
//  User.swift
//  CarnaKit
//
//  Created by Morgana Beatriz on 11/02/21.
//

import Foundation

struct User {
    let userName: String
    let friends: [String]
    let userPhoto: String
    let longitude: Double
    let latitude: Double
    let favouriteBlocos: [String]
    
    init(userName: String, friends: [String] , userPhoto: String, longitude: Double, latitude: Double, favouriteBlocos: [String]){
        self.userName = userName
        self.friends = friends
        self.userPhoto = userPhoto
        self.latitude = latitude
        self.longitude = longitude
        self.favouriteBlocos = favouriteBlocos
    }
}

