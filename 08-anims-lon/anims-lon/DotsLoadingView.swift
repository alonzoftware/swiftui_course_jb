//
//  DotsLoadingView.swift
//  anims-lon
//
//  Created by Rene Choque on 15/4/22.
//

import SwiftUI

struct DotsLoadingView: View {
    
    @State private var isLoading = false
    
    var body: some View {
        HStack{
            ForEach(0...5, id: \.self){ index in
                Circle()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color.green)
                    .scaleEffect(self.isLoading ? 0 : 1)
                    .animation(Animation.linear(duration: 0.5).repeatForever().delay(Double(index)/6),value: self.isLoading)
            }
        }.onAppear(){
            self.isLoading = true
        }
    }
}

struct DotsLoadingView_Previews: PreviewProvider {
    static var previews: some View {
        DotsLoadingView()
    }
}
