//
//  DragView.swift
//  gestos-lon
//
//  Created by Rene Alonzo Choque Saire on 3/5/23.
//

import SwiftUI

struct DragView: View {
    @GestureState private var dragState = DragState.none
    //Gestos de arrastre
    @State private var position = CGSize.zero
    var body: some View {
        DraggableView(){
            Text("✈️")
                .font(.system(size:200))
        }    }
}

struct DragView_Previews: PreviewProvider {
    static var previews: some View {
        DragView()
    }
}

