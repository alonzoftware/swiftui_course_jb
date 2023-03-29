//
//  ContentView.swift
//  navigation-lon
//
//  Created by Rene Alonzo Choque Saire on 23/3/23.
//


import SwiftUI

struct ContentView: View {
    @State var gameCharacters = [
        GameCharacter(name: "Goomba", image: "goomba", type : "Enemy", priceLevel: 4),
        GameCharacter(name: "Luigi", image: "luigi", type : "Friend", priceLevel: 3),
        GameCharacter(name: "Mario", image: "mario", type : "Friend", priceLevel: 2),
        GameCharacter(name: "Toad", image: "toad", type : "Friend", priceLevel: 1,featured: true),
        GameCharacter(name: "Yoshi", image: "yoshi", type : "Friend", priceLevel: 4,featured: true,purchased: true),
        
    ]
    
    /*init() {
     let appearance = UINavigationBarAppearance()
     appearance.largeTitleTextAttributes = [
     .font: UIFont(name: "AmericanTypewriter-CondensedLight", size: 32)!,
     .foregroundColor: UIColor.systemYellow
     ]
     appearance.titleTextAttributes = [
     .font: UIFont(name: "AmericanTypewriter-CondensedLight", size: 18)!,
     .foregroundColor: UIColor.systemYellow
     ]
     appearance.setBackIndicatorImage(
     //                UIImage(systemName: "arrow.left.circle.fill"),
     UIImage(systemName: "arrowshape.left.fill"),
     //                transitionMaskImage: UIImage(systemName: "arrow.left.circle")
     transitionMaskImage: UIImage(systemName: "arrowshape.left.fill")
     )
     
     UINavigationBar.appearance().tintColor = .green
     
     UINavigationBar.appearance().standardAppearance = appearance
     UINavigationBar.appearance().compactAppearance = appearance
     UINavigationBar.appearance().scrollEdgeAppearance = appearance
     }*/
    @State var selectedGameCharacter : GameCharacter?
    var body: some View {
        
        NavigationView{
            List{ ForEach(gameCharacters){ gameCharacter in
                //HIDE Navigation LINK
                ZStack{
                    
                    GameCharacterRowView(gameCharacter : gameCharacter)
                        .contextMenu{
                            
                            Button(action: {
                                self.setPurchased(item: gameCharacter)
                            }) {
                                HStack{
                                    Text("Comprar")
                                    Image(systemName: "checkmark.circle")
                                }
                            }
                            
                            Button(action: {
                                self.setFeatured(item: gameCharacter)
                            }) {
                                HStack{
                                    Text("Destacar")
                                    Image(systemName: "star")
                                }
                            }
                            
                            Button(action: {
                                self.delete(item: gameCharacter)
                            }) {
                                HStack{
                                    Text("Eliminar")
                                    Image(systemName: "trash")
                                }
                            }
                        }
                        .onTapGesture {
                            self.selectedGameCharacter = gameCharacter
                        }
                        .actionSheet(item: self.$selectedGameCharacter){ _ in
                            ActionSheet(title: Text("Indica tu acción a realizar"),
                                        message: nil,
                                        buttons: [
                                            .default(Text("Marcar como favorito"), action: {
                                                if let selectedGameCharacter = self.selectedGameCharacter {
                                                    self.setFeatured(item: selectedGameCharacter)
                                                }
                                            }),
                                            .destructive(Text("Eliminar curso"), action: {
                                                if let selectedGameCharacter = self.selectedGameCharacter {
                                                    self.delete(item: selectedGameCharacter)
                                                }
                                            }),
                                            //TODO: colocar aquí más opciones si se desea
                                            .cancel()
                                        ])
                        }
//                                        NavigationLink(destination: DetailView(gameCharacter: gameCharacter)){
//                                            EmptyView()
//                                        }.opacity(0.0)
                }
                
            }.onDelete{ (indexSet) in
                self.gameCharacters.remove(atOffsets: indexSet)
            }
            }
            .navigationBarTitle("Nintendo Characters", displayMode: .automatic)
        }
        
        
    }
    
    
    
    private func setFeatured(item gameCharacter: GameCharacter){
        if let idx = self.gameCharacters.firstIndex(where: {$0.id == gameCharacter.id}){
            self.gameCharacters[idx].featured.toggle()
        }
    }
    
    private func setPurchased(item gameCharacter: GameCharacter){
        if let idx = self.gameCharacters.firstIndex(where: {$0.id == gameCharacter.id}){
            self.gameCharacters[idx].purchased.toggle()
        }
    }
    
    private func delete(item gameCharacter: GameCharacter){
        if let idx = self.gameCharacters.firstIndex(where: {$0.id == gameCharacter.id}){
            self.gameCharacters.remove(at: idx)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct GameCharacterRowView: View {
    var gameCharacter : GameCharacter
    var body: some View {
        HStack{
            Image(gameCharacter.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100, alignment: .center)
                .clipShape(Circle())
                .padding(.trailing, 10)
            
            VStack(alignment: .leading) {
                HStack{
                    Text("\(gameCharacter.name)")
                        .font(.system(.body, design:.rounded))
                        .bold()
                    
                    Text(String(repeating: "€", count: gameCharacter.priceLevel))
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                
                Text(gameCharacter.type)
                    .font(.system(.subheadline, design: .rounded))
                    .bold()
                    .foregroundColor(.secondary)
            }
            Spacer().layoutPriority(-10)
            
            if gameCharacter.featured {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
            
            if gameCharacter.purchased {
                Spacer()
                
                Image(systemName: "checkmark.circle.fill")
                    .foregroundColor(.green)
            }
        }
    }
    
}

