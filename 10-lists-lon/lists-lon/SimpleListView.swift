//
//  SimpleListView.swift
//  lists-lon
//
//  Created by Rene Alonzo Choque Saire on 18/3/23.
//

import SwiftUI

struct SimpleListView: View {
    var body: some View {
        List{
            Text("Simple Row 1")
            Text("Simple Row 2")
        }
        List{
            
            ForEach(1...2,id: \.self){
                index in
                Text("Row with ForEach Index \(index)")
            }
            
            ForEach(1...2,id: \.self){
                Text("Row with ForEach Index$ \($0)")
            }
        }
        List(1...2,id: \.self){
            Text("Row with List Only \($0)")
            
        }
    }
    //        VStack {
    //            Image(systemName: "globe")
    //                .imageScale(.large)
    //                .foregroundColor(.accentColor)
    //            Text("Hello, world!")
    //        }
    //        .padding()
    
}

struct SimpleListView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleListView()
    }
}
