//
//  MagnificableView.swift
//  gestos-lon
//
//  Created by Rene Alonzo Choque Saire on 9/5/23.
//

import SwiftUI

struct MagnificableView<T>: View where T: View {
    @GestureState private var magnifyBy = 1.0
    @State private var sizeContent = 1.0
    var content: () -> T
    var body: some View {
        content()
            .scaleEffect(magnifyBy * sizeContent)
            .gesture(
                MagnificationGesture()
                    .updating($magnifyBy) { currentState, gestureState, transaction in
                        gestureState = currentState
                        
                    }
                    .onEnded{ (value) in
                        self.sizeContent *= value
                    }
            )
    }
}

struct MagnificableView_Previews: PreviewProvider {
    static var previews: some View {
        MagnificableView(){
            Text("Me gusta aprender SwiftUI")
                .font(.system(size:20, weight: .bold, design: .rounded))
                .foregroundColor(.pink)
        }
    }
}
