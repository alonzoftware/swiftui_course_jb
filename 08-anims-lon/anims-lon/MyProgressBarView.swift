//
//  MyProgressBarView.swift
//  anims-lon
//
//  Created by Rene Choque on 15/4/22.
//

import SwiftUI

struct MyProgressBarView: View {
    @State private var progress: CGFloat = 0.0
    
    var body: some View {
        VStack{
            Text("\(Int(progress*100)) %")
                .font(.system(.title, design:.rounded))
                .bold()
            
            ZStack{
                
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.gray)
                    .frame(width: 350, height: 20)
                
                RoundedRectangle(cornerRadius: 16)
                    .fill(progress >= 1.0 ? Color.red : Color.green)
                    .offset(x: -175 + (350 * progress/2), y: 0)
                    .frame(width: 350 * progress, height: 20)
                   
                    .onAppear(){
                        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
                            self.progress += 0.01
                            if self.progress >= 1.0{
                                timer.invalidate()
                            }
                        }
                    }
                
            }
        }
        
        
    }
}

struct MyProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        MyProgressBarView()
    }
}
