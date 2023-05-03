//
//  ContentView.swift
//  gestos-lon
//
//  Created by Rene Alonzo Choque Saire on 2/5/23.
//

import SwiftUI

struct ContentView: View {
    @State private var hasBeenPressed = false
    @GestureState private var hasBeenLongPressed = false
    var body: some View {
        Image(systemName: "paperplane.fill")
                    .font(.system(size:150))
                    .foregroundColor(.purple)
                    .opacity(hasBeenLongPressed ? 0.5 : 1.0)
                    .scaleEffect(hasBeenPressed ? 2.0 : 1.0)
                    .animation(.easeIn,value: self.hasBeenPressed)
                    .gesture(
//                        TapGesture()
//                            .onEnded{
//                                print("GESTURE : TapGesture")
//                                self.hasBeenPressed.toggle()
//                            }
                        
                        LongPressGesture(minimumDuration: 2.0)
                            .updating($hasBeenLongPressed){ (value, state, transaction) in
                                state = value
                            }
                            .onEnded{ _ in
                                self.hasBeenPressed.toggle()
                            }
                    )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
