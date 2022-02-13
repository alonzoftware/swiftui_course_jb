//
//  ContentView.swift
//  ScrollCardView-lon
//
//  Created by Rene Alonzo Choque Saire on 13/2/22.
//

import SwiftUI

struct ContentView: View {
    let widthCard : CGFloat = 350
    var body: some View {
        /*
         //ScrollView VERTICAL
         //=================================
         ScrollView{
         VStack{
         Image("nintendo-logo")
         .resizable()
         .aspectRatio(contentMode: .fit)
         //                    .padding(-30)
         .frame(height: 100, alignment: .center)
         Text("Gaming Books")
         .font(.system(.largeTitle,design: .rounded))
         .fontWeight(.bold)
         .foregroundColor(.primary)
         
         Text("Nintendo Video Game Coorporation")
         .font(.system(.caption,design: .rounded))
         .fontWeight(.light)
         .foregroundColor(.secondary)
         
         Text("More Than 1 000 000 of Gamers")
         .font(.system(.footnote,design: .rounded))
         .fontWeight(.black)
         .foregroundColor(.secondary)
         
         }
         CardView(imageName: "yoshi", authorName: "Nintendo", courseTitle: "Yoshi History", originalPrice: "199.99 $", discountPrice: "10.99 $")
         CardView(imageName: "mario", authorName: "Nintendo", courseTitle: "Mario History", originalPrice: "199.99 $", discountPrice: "10.99 $")
         CardView(imageName: "luigi", authorName: "Nintendo", courseTitle: "Luigi History", originalPrice: "199.99 $", discountPrice: "10.99 $")
         CardView(imageName: "goomba", authorName: "Nintendo", courseTitle: "Goomba History", originalPrice: "199.99 $", discountPrice: "10.99 $")
         CardView(imageName: "toad", authorName: "Nintendo", courseTitle: "Toad History", originalPrice: "199.99 $", discountPrice: "10.99 $")
         }
         */
        //ScrollView HORIZONTAL - CARROUSEL
        //=================================
        
        ScrollView {
            VStack(alignment: .center){
                Image("nintendo-logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                //.padding(-30)
                    .frame(height: 100, alignment: .center)
                Text("Gaming Books")
                    .font(.system(.largeTitle,design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                
                Text("Nintendo Video Game Coorporation")
                    .font(.system(.caption,design: .rounded))
                    .fontWeight(.light)
                    .foregroundColor(.secondary)
                
                Text("More Than 1 000 000 of Gamers")
                    .font(.system(.footnote,design: .rounded))
                    .fontWeight(.black)
                    .foregroundColor(.secondary)
                
                ScrollView(.horizontal, showsIndicators: false){
                    
                    HStack{
                        CardView(imageName: "yoshi", authorName: "Nintendo", courseTitle: "Yoshi History", originalPrice: "199.99 $", discountPrice: "10.99 $")
                            .frame(width: widthCard)
                        CardView(imageName: "mario", authorName: "Nintendo", courseTitle: "Mario History", originalPrice: "199.99 $", discountPrice: "10.99 $")
                            .frame(width: widthCard)
                        CardView(imageName: "luigi", authorName: "Nintendo", courseTitle: "Luigi History", originalPrice: "199.99 $", discountPrice: "10.99 $")
                            .frame(width: widthCard)
                        CardView(imageName: "goomba", authorName: "Nintendo", courseTitle: "Goomba History", originalPrice: "199.99 $", discountPrice: "10.99 $")
                            .frame(width: widthCard)
                        CardView(imageName: "toad", authorName: "Nintendo", courseTitle: "Toad History", originalPrice: "199.99 $", discountPrice: "10.99 $")
                            .frame(width: widthCard)
                        
                    }
                    
                }
                
                
                ScrollView(.horizontal, showsIndicators: false){
                    
                    HStack{
                        CardView(imageName: "yoshi", authorName: "Nintendo", courseTitle: "Yoshi History", originalPrice: "199.99 $", discountPrice: "10.99 $")
                            .frame(width: widthCard)
                        CardView(imageName: "mario", authorName: "Nintendo", courseTitle: "Mario History", originalPrice: "199.99 $", discountPrice: "10.99 $")
                            .frame(width: widthCard)
                        CardView(imageName: "luigi", authorName: "Nintendo", courseTitle: "Luigi History", originalPrice: "199.99 $", discountPrice: "10.99 $")
                            .frame(width: widthCard)
                        CardView(imageName: "goomba", authorName: "Nintendo", courseTitle: "Goomba History", originalPrice: "199.99 $", discountPrice: "10.99 $")
                            .frame(width: widthCard)
                        CardView(imageName: "toad", authorName: "Nintendo", courseTitle: "Toad History", originalPrice: "199.99 $", discountPrice: "10.99 $")
                            .frame(width: widthCard)
                        
                    }
                    
                }
            }
        }//VStack
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
