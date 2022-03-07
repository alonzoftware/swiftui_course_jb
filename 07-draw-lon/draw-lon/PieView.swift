//
//  PieView.swift
//  draw-lon
//
//  Created by Rene Alonzo Choque Saire on 6/3/22.
//
//https://developer.apple.com/documentation/uikit/uicolor/standard_colors
import SwiftUI

struct PieView: View {
    var body: some View {
        ZStack{
            //Path Superior
            Path(){path in
                
                path.move(to: CGPoint(x:200, y:250))
                
                path.addArc(center: CGPoint(x:200, y:250),
                            radius: 160,
                            startAngle: Angle(degrees: 0),
                            endAngle: Angle(degrees: 200),
                            clockwise: true)
                
            }.fill(Color(.systemBlue))
            
            //QUesito rosa
            Path(){path in
                
                path.move(to: CGPoint(x:200, y:250))
                
                path.addArc(center: CGPoint(x:200, y:250),
                            radius: 160,
                            startAngle: Angle(degrees: 200),
                            endAngle: Angle(degrees: 160),
                            clockwise: true)
                
            }
            .fill(Color(.systemPink))
            .offset(x:-30, y:0)
            //Outline y texto del quesito rosa
            Path(){path in
                
                path.move(to: CGPoint(x:200, y:250))
                
                path.addArc(center: CGPoint(x:200, y:250),
                            radius: 160,
                            startAngle: Angle(degrees: 200),
                            endAngle: Angle(degrees: 160),
                            clockwise: true)
                path.closeSubpath()
                
            }
            .stroke(Color(red:200/255, green: 50/255, blue:120/255), lineWidth: 10)
            .offset(x:-30, y:0)
            .overlay(
                Text("11.1%")
                    .font(.system(.largeTitle, design:.rounded))
                    .bold()
                    .foregroundColor(.white)
                    .offset(x:-140, y:-160)
                
            )
            
            
            
            //INferior izquierda
            Path(){path in
                
                path.move(to: CGPoint(x:200, y:250))
                
                path.addArc(center: CGPoint(x:200, y:250),
                            radius: 160,
                            startAngle: Angle(degrees: 160),
                            endAngle: Angle(degrees: 110),
                            clockwise: true)
                
            }.fill(Color(.systemIndigo))
            
            //Inferior derecha
            Path(){path in
                
                path.move(to: CGPoint(x:200, y:250))
                
                path.addArc(center: CGPoint(x:200, y:250),
                            radius: 160,
                            startAngle: Angle(degrees: 110),
                            endAngle: Angle(degrees: 0),
                            clockwise: true)
                
            }.fill(Color(.systemTeal))
        }
        
    }
}

struct PieView_Previews: PreviewProvider {
    static var previews: some View {
        PieView()
    }
}
