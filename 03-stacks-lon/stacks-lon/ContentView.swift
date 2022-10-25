//
//  ContentView.swift
//  stacks-lon
//
//  Created by Rene Alonzo Choque Saire on 13/2/22.
//

import SwiftUI

struct ContentView: View {
    /*var body: some View {
     VStack {
     HeaderView()
     HStack {
     PricingView(title: "Plan\nBásico"
     , subTitle: "Un Curso Incluido"
     , price: "9.99$"
     , textColor: Color.white
     , backgroundColor: Color.green
     , message: "")
     
     PricingView(title: "Plan\nPremiun"
     , subTitle: "Toda Una Carrera"
     , price: "29.99$"
     , textColor: .black
     , backgroundColor: Color(red:230/255, green: 230/255 , blue: 230/255)
     ,message: "El Mejor para Empezar")
     
     }.padding()
     PricingView(title: "Definitivo"
     , subTitle: "Todos los cursos online"
     , price: "99.99$"
     , textColor: .white
     , backgroundColor: .black
     ,message: "Conviertete en un máster del universo",nameSFSymbol: "lightbulb").padding()
     }
     
     }*/
    var body: some View {
        VStack {
            HeaderView()
            Spacer()
            ZStack {
                PricingView(title: "Básico"
                             , subTitle: "Un Curso Incluido"
                             , price: "9.99$"
                             , textColor: Color.white
                             , backgroundColor: Color.green
                             , message: ""
                             , nameSFSymbol: "star")
                    .offset(x: 0, y: -200)
                
                PricingView(title: "Carrera"
                             , subTitle: "Toda Una Carrera"
                             , price: "29.99$"
                             , textColor: .black
                             , backgroundColor: Color(red:230/255, green: 230/255 , blue: 230/255)
                             ,message: "El Mejor para Empezar"
                             ,nameSFSymbol: "timer")
                    .offset(x: 0, y: -50)
                PricingView(title: "Definitivo"
                             , subTitle: "Todos los cursos online"
                             , price: "99.99$"
                             , textColor: .white
                             , backgroundColor: .black
                             , message: "Conviertete en un máster del universo"
                             , nameSFSymbol: "lightbulb")
                    .offset(x: 0, y: 100)
            }.padding()//.horizontal,.vertical, .all
            Spacer() // Expand space like gum sponge
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10){
                Text("Elige tu itinerario")
                    .font(.system(.largeTitle,design: .rounded))
                    .fontWeight(.black)
                Text("de aprendizaje")
                    .font(.system(.largeTitle,design: .rounded))
                    .fontWeight(.black)
            }
            Spacer()
        }.padding()
        
    }
}


struct PricingView: View {
    let title : String
    var subTitle : String
    var price : String
    var textColor : Color
    var backgroundColor : Color
    var message : String = ""
    var opacityMessage : Double {
        if (message.isEmpty) {
            return 0.0
        } else {
            return 1.0
        }
    }
    var nameSFSymbol : String?
    //    var nameSFSymbol : String = ""
    
    var body: some View {
        
        ZStack {
            VStack{
                nameSFSymbol.map({
                    Image(systemName:$0).font(.system(size: 35)).foregroundColor(textColor) //$0 the same variable = nameSFSymbol
                })
                
                //                if !nameSFSymbol.isEmpty {
                //                    Image(systemName: nameSFSymbol).font(.system(size: 35)).foregroundColor(textColor)
                //                } else {
                //                    EmptyView()
                //                }
                
                
                Text(title)
                    .font(.system(.title,design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(textColor)
                Text(price)
                    .font(.system(size: 25,weight: .heavy,design: .rounded))
                    .foregroundColor(textColor)
                Text(subTitle)
                    .font(.headline)
                    .foregroundColor(textColor)
                
            }.multilineTextAlignment(.center)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
                .padding(30)
                .background(backgroundColor)
                .cornerRadius(10)
            
            Text(message)
                .font(.system(.caption, design: .rounded))
                .foregroundColor(.white)
                .fontWeight(.black)
                .padding(8)
                .background(Color(red:240/255, green: 180/255 , blue: 50/255))
                .offset(x: 0, y: -95)
                .opacity(opacityMessage)
        }
    }
}

