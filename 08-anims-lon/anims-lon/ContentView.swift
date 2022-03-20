//
//  ContentView.swift
//  anims-lon
//
//  Created by Rene Alonzo Choque Saire on 16/3/22.
//

import SwiftUI

struct ContentView: View {
    @State private var buttonColorChanged = false
    @State private var iconColorChanged = false
    @State private var iconSizeChanged = false
    
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 180, height: 180)
            
                .foregroundColor(buttonColorChanged ? Color(.systemGray4) : .green)
//                .animation(Animation.default, value: buttonColorChanged) //Implicit Animation
            
            Image(systemName: "keyboard")
                .font(.system(size: 80))
            
                .foregroundColor(iconColorChanged ? .green : Color(.systemGray6))
//                .animation(Animation.default, value: iconColorChanged) //Implicit Animation
            
                .scaleEffect(iconSizeChanged ? 1.0 : 0.5)
//                .animation(Animation.spring(response: 1, dampingFraction: 0.1, blendDuration: 0.5), value: iconSizeChanged) //Implicit Animation
                
        }
//        .animation(Animation.default)
        .onTapGesture {
//            withAnimation(.default){ //Explicit Animation
            withAnimation(Animation.spring(response: 1, dampingFraction: 0.1, blendDuration: 0.5)){ //Explicit Animation
                self.iconSizeChanged.toggle()
                self.iconColorChanged.toggle()
            }
            self.buttonColorChanged.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
