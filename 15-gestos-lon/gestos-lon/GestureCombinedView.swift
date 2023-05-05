//
//  GestureCombinedView.swift
//  gestos-lon
//
//  Created by Rene Alonzo Choque Saire on 4/5/23.
//

import SwiftUI

struct GestureCombinedView: View {
    
    //Long Press
    //@GestureState private var hasBeenLongPressed = false
    //Drag
    @State private var position = CGSize.zero
//    @GestureState private var offset = CGSize.zero
    @GestureState private var dragState = DragState.none
    
    var body: some View {
        Image(systemName: "paperplane.fill")
                    .font(.system(size:150))
                    .foregroundColor(.purple)
            .opacity(dragState.isPressing ? 0.5 : 1.0)
            .offset(x: position.width + dragState.translation.width,
                    y: position.height + dragState.translation.height)
//            .opacity(hasBeenLongPressed ? 0.5 : 1.0)
//            .offset(x: position.width + offset.width,
//                    y: position.height + offset.height)
            //.animation(.easeIn,value: dragState.translation)
            .gesture(
                
                //First Gesture Detected
                LongPressGesture(minimumDuration: 0.5)
//                    .updating($hasBeenLongPressed){ (value, state, transaction) in
//                        state = value
//                    }
                    .sequenced(before: DragGesture())
                    .updating($dragState){(value,state,transaction) in
                        switch value {
                        case .first(true) :
                            state = .pressing
                        case .second(true, let drag):
//                            state = drag?.translation ?? .zero
                            state = .dragging(translation: drag?.translation ?? .zero)
                        default :
                            break
                        }
                    }
                    .onEnded{
                        (value) in
                        
                        guard case .second(true, let drag?) = value else {
                            return
                        }
                        self.position.height += drag.translation.height
                        self.position.width += drag.translation.width
                    }
            )
    }
}

struct GestureCombinedView_Previews: PreviewProvider {
    static var previews: some View {
        GestureCombinedView()
    }
}
