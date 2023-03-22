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
    
    var games = [
        Game(name: "The Goombas Game", image: "goomba"),
        Game(name: "The Mario Game", image: "luigi"),
        Game(name: "The Luigi Game", image: "mario"),
        Game(name: "The Toad Adventure", image: "toad"),
        Game(name: "The Yoshis Story Most Amazing Adventure of his life", image: "yoshi"),
        
    ]
    var body: some View {
        //        OPTION 1
        //        List(gameNames.indices,id: \.self){
        //            index in
        //            HStack{
        //                Image(self.gameImages[index])
        //                    .resizable()
        //                    .aspectRatio(contentMode: .fill)
        //                    .frame(width: 100, height: 100, alignment: .center)
        //                    .clipped()
        //                    .cornerRadius(50)
        //                    .padding([.top])
        //                Text("\(self.gameNames[index])")
        //            }
        //
        //        }
        //        OPTION 2
        //        List(games.indices,id: \.self){
        //            index in
        //            HStack{
        //                Image(self.games[index].image)
        //                    .resizable()
        //                    .aspectRatio(contentMode: .fill)
        //                    .frame(width: 100, height: 100, alignment: .center)
        //                    .clipped()
        //                    .cornerRadius(50)
        //                    .padding([.top])
        //                Text("\(self.games[index].name)")
        //            }
        //
        //        }
        //        OPTION 3
        List(games,id: \.id){
            game in
            HStack{
                Image(game.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100, alignment: .center)
                    .clipped()
                    .cornerRadius(50)
                    .padding([.top])
                Text("\(game.name)")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct Game {
    var id = UUID()
    var name : String
    var image: String
    
}
