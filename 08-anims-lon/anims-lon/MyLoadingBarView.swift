//
//  MyLoadingBarView.swift
//  anims-lon
//
//  Created by Rene Alonzo Choque Saire on 14/4/22.
//

import SwiftUI

struct MyLoadingBarView: View {
    @State private var smallBarOffset: CGFloat = -150.0
    
    var body: some View {
        VStack{
            Text("Cargando ...")
                .fontWeight(.bold)
            
            ZStack{
                
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.gray)
                    .frame(width: 350, height: 20)
                
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.green)
                    .frame(width: 50, height: 20)
                    .offset(x: self.smallBarOffset, y: 0)
                    .onAppear(){
                        withAnimation(.easeOut(duration: 2).repeatForever(autoreverses : false)) {
                            self.smallBarOffset = 150
                            
                        }
                    }
                
            }
        }
        
        
    }
}

struct MyLoadingBarView_Previews: PreviewProvider {
    static var previews: some View {
        MyLoadingBarView()
    }
}
