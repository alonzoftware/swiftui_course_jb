//
//  DragView.swift
//  gestos-lon
//
//  Created by Rene Alonzo Choque Saire on 3/5/23.
//

import SwiftUI

struct DragView: View {
    @State private var position = CGSize.zero
    @GestureState private var offset = CGSize.zero
    var body: some View {
        Image(systemName: "paperplane.fill")
            .font(.system(size:80))
            .foregroundColor(.purple)
//            .offset(x: offset.width, y:offset.height)
            .offset(x: position.width + offset.width,
                    y: position.height + offset.height)
            .animation(.easeIn,value: self.offset)
            .gesture(
                DragGesture()
                    .updating($offset){(value,state,transaction) in
                        state = value.translation
                    }
                    .onEnded{
                        (value) in
                        self.position.height += value.translation.height
                        self.position.width += value.translation.width
                    }
            )
    }
}

struct DragView_Previews: PreviewProvider {
    static var previews: some View {
        DragView()
    }
}
