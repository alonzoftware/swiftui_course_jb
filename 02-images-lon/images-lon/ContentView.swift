//
//  ContentView.swift
//  images-lon
//
//  Created by Rene Alonzo Choque Saire on 19/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//
//            Image(systemName: "keyboard")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world!")
//
//
//        }
//        .padding()
        
        Image(systemName: "keyboard")
            .font(.system(size: 100))
            .foregroundColor(.accentColor)//.foregroundColor(.green)
            .shadow(color: .gray, radius: 10,x:0,y:10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
