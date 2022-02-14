//
//  ContentView.swift
//  draw-lon
//
//  Created by Rene Alonzo Choque Saire on 14/2/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Path(){ path in
            path.move(to: CGPoint(x: 30, y: 30))
            path.addLine(to: CGPoint(x:230, y:30))
            path.addLine(to: CGPoint(x:230, y:150))
            path.addLine(to: CGPoint(x:30, y:150))
            path.closeSubpath()
        }
//        .fill(Color.blue)
        .stroke(Color.blue, lineWidth: 10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
