//
//  Extensions.swift
//  Tinder-lon
//
//  Created by Rene Alonzo Choque Saire on 15/5/23.
//

import Foundation
import SwiftUI

extension AnyTransition{
    
    static var trailingBottomAtRemoval: AnyTransition{
        AnyTransition.asymmetric(insertion: .identity,
                                 removal: AnyTransition
                                    .move(edge: .trailing)
                                    .combined(with: .move(edge: .bottom)))
    }
    
    
    static var leadingBottomAtRemoval: AnyTransition{
        AnyTransition.asymmetric(insertion: .identity,
                                 removal: AnyTransition
                                    .move(edge: .leading)
                                    .combined(with: .move(edge: .bottom)))
    }
    
    //TODO: definir leadingTop at removal / trailingTop at removal
}
