//
//  CardView.swift
//  ScrollCardView
//
//  Created by Rene Alonzo Choque Saire on 30/1/22.
//

import SwiftUI

struct CardView: View {
    var imageName: String
    var authorName : String
    var courseTitle : String
    var originalPrice : String
    var discountPrice : String
    
    var body: some View {
        VStack (alignment: .center){
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300, alignment: .center)
            HStack{
                VStack(alignment: .leading){
                    Text(authorName)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    
                    Text(courseTitle.uppercased())
                        .font(.title)
                        .foregroundColor(.primary)
                        .fontWeight(.bold)
                        .lineLimit(2)
                    HStack{
                        Text(originalPrice)
                            .font(.subheadline)
                            .foregroundColor(.primary)
                        
                        Text(discountPrice)
                            .font(.caption)
                            .foregroundColor(.secondary)
                            .strikethrough()
                    }
                }
                .layoutPriority(10)
                Spacer()
            }.padding()
            
        }
        
        .cornerRadius(15)
        .overlay(RoundedRectangle(cornerRadius: 15)
                    .stroke(Color(red: 130/255, green: 130/255, blue: 130/255, opacity: 0.5),lineWidth: 3))
        .padding([.top,.horizontal])
    }
        
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(imageName: "yoshi", authorName: "Alonzo Choque", courseTitle: "Yoshi History", originalPrice: "199.99 $", discountPrice: "10.99 $")
    }
}
