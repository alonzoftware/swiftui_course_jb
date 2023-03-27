//
//  ContentView.swift
//  modals-lon
//
//  Created by Alonzo Choque on 27/3/23.
//

import SwiftUI

struct ContentView: View {
//    @State var showModalView = false;
    @State var selectedGameCharacter : GameCharacter?;
    

    
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
    
    var body: some View {
        
        NavigationView{
            List(GameCharacterFactory.gameCharacters){ gameCharacter in
                GameCharacterFullImageRow(gameCharacter : gameCharacter)
                    .onTapGesture {
//                        self.showModalView = true
                        self.selectedGameCharacter = gameCharacter}
            }
//            .sheet(isPresented: self.$showModalView){
//                if self.selectedGameCharacter != nil {
//                    DetailView(gameCharacter : self.selectedGameCharacter!)
//                }
//            }
            .sheet(item: self.$selectedGameCharacter){ gameCharacter in
                            DetailView(gameCharacter: gameCharacter)
                        }
            .navigationBarTitle("Nintendo Characters", displayMode: .automatic)
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
                .clipped()
                .cornerRadius(50)
                .padding([.top])
            Text("\(gameCharacter.name)")
                .frame(width: 250)
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

