//
//  ContentView.swift
//  sign_up-lon
//
//  Created by Rene Alonzo Choque Saire on 25/4/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var registrationVM = RegistrationViewModel()
    var body: some View {
        VStack{
            Text("Crea una cuenta")
                .font(.system(.largeTitle, design: .rounded))
                .bold()
                .padding(.bottom, 50)
            SingleFormView(fieldName: "Nombre de Usuario", fieldValue: $registrationVM.username)
            SingleFormView(fieldName: "Clave de Acceso", fieldValue: $registrationVM.password, isProtected: true)
            SingleFormView(fieldName: "Confirmar Clave de Acceso", fieldValue: $registrationVM.confirmPassword, isProtected: true)
            Spacer()
        }.padding()
    }
    struct SingleFormView: View {
        
        var fieldName = ""
        @Binding var fieldValue: String
        var isProtected = false
        
        var body: some View{
            VStack{
                if isProtected{
                    SecureField(fieldName, text: $fieldValue)
                        .font(.system(size: 18, weight: .bold, design: .rounded))
                        .padding(.horizontal)
                }else{
                    TextField(fieldName, text: $fieldValue)
                        .font(.system(size: 18, weight: .bold, design: .rounded))
                        .padding(.horizontal)
                }
                Divider()
                    .frame(height: 1)
                    .background(Color.gray)
                    .padding(.horizontal)
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
