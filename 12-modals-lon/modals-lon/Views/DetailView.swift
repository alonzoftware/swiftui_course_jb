//
//  DetailView.swift
//  modals-lon
//
//  Created by Alonzo Choque on 27/3/23.
//

import SwiftUI

struct DetailView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State private var showAlertView = false

    
    var gameCharacter: GameCharacter
    
    
    var body: some View {
        ScrollView{
            VStack{
                Spacer()
                    .frame(height: 80)
                Image(gameCharacter.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
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
        .edgesIgnoringSafeArea(.top)
        .overlay(
            HStack{
                Spacer()
                
                VStack{
                    Button(action:{
                        //self.showAlertView = true
                        self.presentationMode.wrappedValue.dismiss();
                    }, label: {
//                        Image(systemName: "chevron.down.circle")
                        Image(systemName: "x.circle.fill")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                    })
                    .padding(.trailing, 20)
                    .padding(.top, 20)
                    
                    Button(action:{
                        self.showAlertView = true
                       
                    }, label: {
//                        Image(systemName: "chevron.down.circle")
                        Image(systemName: "questionmark.app.fill")
                        
                            .font(.largeTitle)
                            .foregroundColor(.black)
                    })
                    .padding(.trailing, 20)
                    .padding(.top, 20)
                    Spacer()
                }
            }
        )
        .alert(isPresented: $showAlertView){
                    Alert(title: Text("¡Cuidado!"),
                    message: Text("¿Estás seguro de cerrar esta ventana?"),
                    primaryButton: .default(Text("Si"), action: {self.presentationMode.wrappedValue.dismiss()}),
                    secondaryButton: .cancel(Text("No")))
                }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(gameCharacter: GameCharacter(name: "Goomba", image: "goomba"))
    }
}
