//
//  HomeworkCounterView.swift
//  states_bindings-lon
//
//  Created by Alonzo Choque on 13/2/22.
//

import SwiftUI

struct HomeworkCounterView: View {
    @State private var myCounter : Int = 0
    
    var body: some View {
        Button(action: {
            self.myCounter += 1
            print(self.myCounter)
        }){
            Text("\(myCounter)")
                .font(.largeTitle)
                .fontWeight(.black)
            
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(50)
            
                .padding(12)
            //.border(Color.green, width: 5)
                .overlay(
                    RoundedRectangle(cornerRadius: 50)
                        .stroke(Color.green, lineWidth: 5)
                )
        }
    }
}

struct HomeworkCounterView_Previews: PreviewProvider {
    static var previews: some View {
        HomeworkCounterView()
    }
}
