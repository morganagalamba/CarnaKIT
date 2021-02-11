//
//  Blocos.swift
//  CarnaKit
//
//  Created by Morgana Beatriz on 11/02/21.
//

import Foundation

struct Bloco{
    let nameBloco: String
    let description: String
    let photoBloco: String
    let longitude: Double
    let latitude: Double
    let apresentationDays: [Apresentation]
    
    init(nameBloco: String, description: String, photoBloco: String, longitude: Double, latitude: Double, apresentationDays: [Apresentation]) {
        self.nameBloco = nameBloco
        self.description = description
        self.photoBloco = photoBloco
        self.longitude = longitude
        self.latitude = latitude
        self.apresentationDays = apresentationDays
    }
    
    
}

extension Bloco{
    
    struct Apresentation{
        let day: String
        let hour: String
    }
}

