//
//  GameCharacterFactory.swift
//  forms-lon
//
//  Created by Rene Alonzo Choque Saire on 27/3/23.
//

import Foundation
struct GameCharacterFactory {
    static var gameCharacters = [
        GameCharacter(name: "Goomba", image: "goomba", type : "Enemy", priceLevel: 4),
        GameCharacter(name: "Luigi", image: "luigi", type : "Friend", priceLevel: 3),
        GameCharacter(name: "Mario", image: "mario", type : "Friend", priceLevel: 2),
        GameCharacter(name: "Toad", image: "toad", type : "Friend", priceLevel: 1),
        GameCharacter(name: "Yoshi", image: "yoshi", type : "Friend", priceLevel: 4),
        
    ]
}
