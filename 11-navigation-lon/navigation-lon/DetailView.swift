//
//  DetailView.swift
//  navigation-lon
//
//  Created by Rene Alonzo Choque Saire on 23/3/23.
//

import SwiftUI

struct DetailView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var gameCharacter: GameCharacter
    
    
    var body: some View {
        ScrollView{
            VStack{
                Spacer()
                    .frame(height: 80)
                Image(gameCharacter.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height:350)
                //.clipped()
                
                Text(gameCharacter.name)
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.black)
                    .multilineTextAlignment(.center)
                    .frame(width:300)
                    .lineLimit(3)
                Spacer()
                
            }
            
        }
        //.navigationBarTitle("", displayMode: .inline)
        .edgesIgnoringSafeArea(.top)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:
                                Button(action: {
            //Navegar a la pantalla previa
            self.presentationMode.wrappedValue.dismiss()
        }, label: {
            Image(systemName: "arrow.left.circle.fill")
                .font(.title)
                .foregroundColor(.white)
        })
        )
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(gameCharacter: GameCharacter(name: "Goomba", image: "goomba"))
    }
}
