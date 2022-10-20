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
        
        //Image("lapaz").resizable() //Adjust to Screen with Safe Area
        Image("lapaz")
            .resizable()
            //.edgesIgnoringSafeArea(.top) //Adjust to Screen without Safe Area
            //.scaledToFit()
            //.aspectRatio(contentMode: .fit) // The Same of .scaledToFit
            //.aspectRatio(contentMode: .fill)
            //.aspectRatio(contentMode: .fit).frame(width: 300) //Scale to Width
            //.aspectRatio(contentMode: .fill).frame(width: 300).clipped() //Fill and scale to width cutting edges
            .aspectRatio(contentMode: .fill).frame(width: 300).clipShape(Capsule()) //Fill and scale cliped with Shape,Circle(), Ellipse(), Capsule()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
