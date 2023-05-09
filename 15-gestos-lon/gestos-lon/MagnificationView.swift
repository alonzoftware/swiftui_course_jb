//
//  MagnificationView.swift
//  gestos-lon
//
//  Created by Rene Alonzo Choque Saire on 9/5/23.
//

import SwiftUI

struct MagnificationView: View {
    @GestureState private var magnifyBy = 1.0
    var body: some View {
        MagnificableView(){
            Text("🐶")
                .font(.system(size:200))
        }
    }
}

struct MagnificationView_Previews: PreviewProvider {
    static var previews: some View {
        MagnificationView()
    }
}
