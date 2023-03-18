//
//  ContentView.swift
//  lists-lon
//
//  Created by Rene Alonzo Choque Saire on 19/2/23.
//

import SwiftUI

struct ContentView: View {
    var gameNames = [
        "The Goombas Game",
        "The Mario Game",
        "The Luigi Game",
        "The Toad Adventure",
        "The Yoshis Story Most Amazing Adventure of his life"
        
    ]
    var gameImages = [
        "goomba",
        "luigi",
        "mario",
        "toad",
        "yoshi"
    ]
    var body: some View {
        List(gameNames.indices,id: \.self){
            index in
            HStack{
                Image(self.gameImages[index])
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100, alignment: .center)
                    .clipped()
                    .cornerRadius(50)
                    .padding([.top])
                Text("\(self.gameNames[index])")
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
