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
            .opacity(0.5)
            .overlay(
//                Image(systemName: "heart.fill")
//                    .font(.system(size: 60))
//                    .foregroundColor(.pink)
                
//                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s")
//                    .fontWeight(.bold)
//                    .font(.system(.headline,design: .rounded))
//                    .foregroundColor(.white)
//                    .padding()
//                    .background(Color.gray)
//                    .cornerRadius(10)
//                    .opacity(0.7)
//                    .padding()
//                ,alignment: .bottom
                
                Rectangle()
                    .foregroundColor(.gray)
                    .opacity(0.5)
                    .overlay(
                        Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.yellow)
                            .frame(width: 250)
                    )
                    
                    
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
