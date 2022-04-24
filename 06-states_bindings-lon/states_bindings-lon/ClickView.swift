//
//  ClickView.swift
//  states_bindings-lon
//
//  Created by Alonzo Choque on 13/2/22.
//

import SwiftUI

struct ClickView: View {
    
    @State private var numCounter1 = 0
    @State private var numCounter2 = 0
    @State private var numCounter3 = 0
    
    var body: some View {
        VStack {
            Text("Resultado :")
                .font(.system(size:25, weight:.black, design:.rounded))
            Text("\(numCounter1+numCounter2+numCounter3)")
                .font(.system(size:100, weight:.black, design:.rounded))
            CounterView(numCounter: $numCounter1, buttonColor: .red)
            CounterView(numCounter: $numCounter2, buttonColor: .yellow)
            CounterView(numCounter: $numCounter3, buttonColor: .green)
        }
    }
}

struct ClickView_Previews: PreviewProvider {
    static var previews: some View {
        ClickView()
    }
}

struct CounterView: View {
    
    @Binding var numCounter: Int {
        willSet {
            print("new Value \(newValue)")
        }
        didSet {
            print("old Value \(oldValue)")
        }
    }
    
    var buttonColor: Color
    
    var body: some View {
        Button(action:{
            self.numCounter += 1
        }){
            Circle()
                .frame(width: 150, height: 150)
                .foregroundColor(buttonColor)
                .overlay(Text("+\(numCounter)")
                    .font(.system(size:80, weight:.bold, design:.rounded))
                    .foregroundColor(.white)
            )
        }
    }
}
