//
//  ContentView.swift
//  states_bindings-lon
//
//  Created by Alonzo Choque on 13/2/22.
//

import SwiftUI

struct ContentView: View {
    @State private var isPlaying = false
    
    var body: some View {
        Button(action: {
            self.isPlaying.toggle()
            print(isPlaying ? "State PLAY" : "State STOP")
        }){
            Image(systemName:isPlaying ? "stop.circle.fill" : "play.circle.fill")
                .font(.system(size:100))
                .foregroundColor(isPlaying ? .red : .blue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
