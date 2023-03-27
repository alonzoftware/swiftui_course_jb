//
//  GameCharacter.swift
//  modals-lon
//
//  Created by Rene Alonzo Choque Saire on 27/3/23.
//

import Foundation
struct GameCharacter: Identifiable{
    var id = UUID()
    var name : String
    var image: String
    var description = ""
    var feature :Bool = false
    
}
