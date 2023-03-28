//
//  GameCharacter.swift
//  forms-lon
//
//  Created by Rene Alonzo Choque Saire on 27/3/23.
//

import Foundation
struct GameCharacter: Identifiable{
    var id = UUID()
    var name : String
    var image: String
    var type: String = "Friend"
    var priceLevel: Int = 1
    var featured :Bool = false
    var purchased: Bool = false
    
    
}
