//
//  ContentView.swift
//  navigation-lon
//
//  Created by Rene Alonzo Choque Saire on 23/3/23.
//


import SwiftUI

struct ContentView: View {
    
    var gameCharacters = [
        GameCharacter(name: "Goomba", image: "goomba"),
        GameCharacter(name: "Luigi", image: "luigi"),
        GameCharacter(name: "Mario", image: "mario"),
        GameCharacter(name: "Toad", image: "toad"),
        GameCharacter(name: "Yoshi", image: "yoshi"),
        
    ]
    var body: some View {
        
        NavigationView{
            List(gameCharacters.indices, id: \.self){ idx in
                NavigationLink(destination: DetailView(gameCharacter: self.gameCharacters[idx])){
                    if gameCharacters[idx].feature{
                        GameCharacterFullImageRow(gameCharacter : gameCharacters[idx])
                    }else{
                        GameCharacterRowView(gameCharacter : gameCharacters[idx])
                    }
                }
                
                //  NavigationLink(destination: DetailView(gameCharacter: self.gameCharacters[idx])){
                //  EmptyView()
                //  }
                
            }
            
            .navigationBarTitle("Nintendo Character", displayMode: .automatic)
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
