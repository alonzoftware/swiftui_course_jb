//
//  ContentView.swift
//  lists-lon
//
//  Created by Rene Alonzo Choque Saire on 19/2/23.
//

import SwiftUI

struct ContentView: View {
    var gameCharacterNames = [
        "Goomba",
        "The Mario GameCharacter",
        "The Luigi GameCharacter",
        "The Toad Adventure",
        "The Yoshis Story Most Amazing Adventure of his life"
        
    ]
    var gameCharacterImages = [
        "goomba",
        "luigi",
        "mario",
        "toad",
        "yoshi"
    ]
    
    var gameCharacters = [
        GameCharacter(name: "Goomba", image: "goomba"),
        GameCharacter(name: "Luigi", image: "luigi"),
        GameCharacter(name: "Mario", image: "mario"),
        GameCharacter(name: "Toad", image: "toad"),
        GameCharacter(name: "Yoshi", image: "yoshi"),
        
    ]
    var body: some View {
        //        OPTION 1
        //        List(gameCharacterNames.indices,id: \.self){
        //            index in
        //            HStack{
        //                Image(self.gameCharacterImages[index])
        //                    .resizable()
        //                    .aspectRatio(contentMode: .fill)
        //                    .frame(width: 100, height: 100, alignment: .center)
        //                    .clipped()
        //                    .cornerRadius(50)
        //                    .padding([.top])
        //                Text("\(self.gameCharacterNames[index])")
        //            }
        //
        //        }
        //        OPTION 2
        //        List(gameCharacters.indices,id: \.self){
        //            index in
        //            HStack{
        //                Image(self.gameCharacters[index].image)
        //                    .resizable()
        //                    .aspectRatio(contentMode: .fill)
        //                    .frame(width: 100, height: 100, alignment: .center)
        //                    .clipped()
        //                    .cornerRadius(50)
        //                    .padding([.top])
        //                Text("\(self.gameCharacters[index].name)")
        //            }
        //
        //        }
        //        OPTION 3 WITH STRUCTURE
        //        List(gameCharacters,id: \.id){
        //            gameCharacter in
        //            HStack{
        //                Image(gameCharacter.image)
        //                    .resizable()
        //                    .aspectRatio(contentMode: .fill)
        //                    .frame(width: 100, height: 100, alignment: .center)
        //                    .clipped()
        //                    .cornerRadius(50)
        //                    .padding([.top])
        //                Text("\(gameCharacter.name)")
        //            }
        //
        //        }
        //        OPTION 4 WITH STRUCTURE IDENTIFIABLE
        //        List(gameCharacters){
        //            gameCharacter in
        //            GameCharacterRowView(gameCharacter : gameCharacter)
        //        }
        VStack{
            TitleView()
            List(gameCharacters.indices, id: \.self){ idx in
                if gameCharacters[idx].feature{
                    GameCharacterFullImageRow(gameCharacter : gameCharacters[idx])
                }else{
                    GameCharacterRowView(gameCharacter : gameCharacters[idx])
                }
                
            }
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct GameCharacter: Identifiable{
    var id = UUID()
    var name : String
    var image: String
    var feature :Bool = false
    
}
struct GameCharacterRowView: View {
    var gameCharacter : GameCharacter
    var body: some View {
        HStack{
            Image(gameCharacter.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100, alignment: .center)
                .clipped()
                .cornerRadius(50)
                .padding([.top])
            Text("\(gameCharacter.name)")
        }
    }
    
}

struct TitleView : View {
    var body: some View {
        ZStack{
            
            Image("nintendo-logo")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height:100)
                .cornerRadius(15)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(.gray)
                        .opacity(0.25)
                )
            
            Text("Characters")
                .font(.system(.title, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white )
                .multilineTextAlignment(.center)
                .offset(x: 0, y: 50)
        }
        
    }
}
struct GameCharacterFullImageRow : View {
    var gameCharacter : GameCharacter
    
    var body: some View {
        ZStack{
            Image(gameCharacter.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height:200)
                .cornerRadius(15)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(.gray)
                        .opacity(0.25)
                )
            
            Text(gameCharacter.name)
                .font(.system(.headline, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white )
                .multilineTextAlignment(.center)
        }
    }
}
