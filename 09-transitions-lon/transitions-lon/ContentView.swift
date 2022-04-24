//
//  ContentView.swift
//  transitions-lon
//
//  Created by Rene Alonzo Choque Saire on 24/4/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showTranslation = false
    var body: some View {
        VStack{
            Rectangle()
                .frame(width: 250, height: 250)
                .foregroundColor(.orange)
                .overlay(
                    Text("Car")
                        .font(.system(.largeTitle, design:.rounded))
                        .bold()
                        .foregroundColor(.white)
                )
            
            if showTranslation{
                Rectangle()
                .frame(width: 250, height: 250)
                .foregroundColor(.purple)
                .overlay(
                    Text("Coche")
                        .font(.system(.largeTitle, design:.rounded))
                        .bold()
                        .foregroundColor(.white)
                )
                .transition(.asymmetric(insertion: .scale(scale: 0, anchor: .bottom),
                                        removal: .offset(x: -600, y: 0)
                    )
                )
            }

        }
        .onTapGesture {
            withAnimation(Animation.spring()){
                self.showTranslation.toggle()
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
