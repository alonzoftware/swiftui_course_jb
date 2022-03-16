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
                .animation(Animation.default, value: buttonColorChanged)
            
            Image(systemName: "keyboard")
                .font(.system(size: 80))
            
                .foregroundColor(iconColorChanged ? .green : Color(.systemGray6))
                .animation(Animation.default, value: iconColorChanged)
            
                .scaleEffect(iconSizeChanged ? 1.0 : 0.5)
                .animation(Animation.spring(response: 1, dampingFraction: 0.1, blendDuration: 0.5), value: iconSizeChanged)
                
                
        }
//        .animation(Animation.default)
        .onTapGesture {
            self.buttonColorChanged.toggle()
            self.iconColorChanged.toggle()
            self.iconSizeChanged.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
