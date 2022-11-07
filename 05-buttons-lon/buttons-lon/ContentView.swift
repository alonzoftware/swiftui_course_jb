//
//  ContentView.swift
//  buttons-lon
//
//  Created by Rene Alonzo Choque Saire on 13/2/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(alignment: .center) {
            Button(action: {
                //Qué debe hacer el botón
                print("Botón hola pulsado!!!")
            }) {
                //Cómo debe verse el botón
                Text("¡Hola mundo!")
                    .font(.largeTitle)
                    .fontWeight(.black)
                
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(50)
                
                    .padding(12)
                //.border(Color.green, width: 5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 50)
                            .stroke(Color.green, lineWidth: 5)
                    )
                
            }
            Button(action: {
                //Qué debe hacer el botón
                print("Button with Border")
            }) {
                //Cómo debe verse el botón
                Text("Button Border")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    
                    .padding()
                    //.background(Color.green)
                    .foregroundColor(.white)
                
                    //.padding(12)
                    .border(Color.green, width: 6)
                    
                
            }
            Button(action: {
                print("Eliminar pulsado")
            }){
                Image(systemName: "trash")
                    .padding()
                    .background(Color.red)
                    .clipShape(Circle())
                    .font(.largeTitle)
                    .foregroundColor(.white)
            }
            Button(action: {
                print("Editar pulsado")
            }){
                HStack{
                    Image(systemName: "square.and.pencil")
                    Text("Editar")
                        .fontWeight(.bold)
                }
                    .padding()
                    .background(Color.orange)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .cornerRadius(45)
            }
            
            Button(action: {
                print("Editar pulsado")
            }){
                HStack{
                    Image(systemName: "square.and.pencil")
                    
                    Text("Editar")
                        .fontWeight(.bold)
                }
            }
            .buttonStyle(BasicButtonStyle())
            .padding(EdgeInsets(top: 15, leading: 0, bottom: 0, trailing: 0))
                     
            Button(action: {
                print("Eliminar pulsado")
            }){
                HStack{
                    Image(systemName: "trash")
                    
                    Text("Eliminar")
                        .fontWeight(.bold)
                }
            }
            .buttonStyle(BasicButtonStyle())
            .padding(EdgeInsets(top: 15, leading: 0, bottom: 0, trailing: 0))
            Button(action: {
                print("Compartir pulsado")
            }){
                HStack{
                    Image(systemName: "square.and.arrow.up")
                    
                    Text("Compartir")
                        .fontWeight(.bold)
                }
            }
        .buttonStyle(BasicButtonStyle())
        .padding(EdgeInsets(top: 15, leading: 0, bottom: 0, trailing: 0))
         
        Spacer()
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct BasicButtonStyle: ButtonStyle{
    
    
    func makeBody(configuration: Self.Configuration) -> some View{
        //https://uigradients.com
        configuration.label
            .frame(minWidth:0, maxWidth: .infinity)
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [Color("Dark Ocean 1"), Color("Dark Ocean 2")]),
                                       startPoint: .leading, endPoint: .trailing))
            .font(.largeTitle)
            .foregroundColor(.white)
            .cornerRadius(45)
            .shadow(color: .blue, radius: 10.0, x: 20, y: 5)
            .padding(.horizontal, 15)
            //.scaleEffect(configuration.isPressed ? 0.8 : 1.0)
            .rotationEffect(configuration.isPressed ? .degrees(45) : .degrees(0))
    }
    
    
}
