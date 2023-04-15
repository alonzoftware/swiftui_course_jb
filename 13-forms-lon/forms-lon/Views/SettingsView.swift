//
//  SettingsView.swift
//  forms-lon
//
//  Created by Rene Alonzo Choque Saire on 5/4/23.
//

import SwiftUI

struct SettingsView: View {
    
    
    private var sortingOrders = [
        "alphabetical order",
        "favorite items at the beginning",
        "items purchased at the start"
    ]
    @State private var selectedOrder = 0
    @State private var showPurchasedOnly = false
    @State private var maxPrice = 5 {
        didSet{
            if maxPrice > 5 {
                maxPrice = 5
            }
            
            if maxPrice < 1 {
                maxPrice = 1
            }
        }
    }
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView{
            Form {
                Section(header: Text("Ordering by Character")){
                    Picker(selection: $selectedOrder, label: Text("Character Order")){
                        ForEach(SortingOrderType.allCases, id: \.self){ orderType in
                            Text(orderType.description)
                        }
                        //                        ForEach(0..<sortingOrders.count, id:\.self){
                        //                            Text(self.sortingOrders[$0])
                        //                        }
                    }
                }
                Section(header: Text("Filter Character")){
                    Toggle(isOn: $showPurchasedOnly){
                        Text("Show Purchased Only")
                    }
                    
                    Stepper(onIncrement: {
                        self.maxPrice += 1
                    }, onDecrement: {
                        self.maxPrice -= 1
                    }){
                        Text("Mostrar \(String(repeating:"€", count: maxPrice)) o menos")
                    }
                }
            }
            .navigationBarTitle("Settings")
            .navigationBarItems(leading:
                                    Button(action: {
                self.presentationMode.wrappedValue.dismiss()
                print("Cerrar Modal")
            }, label: {
                Image(systemName:"xmark.circle")
                    .font(.title)
                    .foregroundColor(.gray)
            }),
                                trailing:
                                    Button(action: {
                //                                self.settings.order = self.selectedOrder
                //                                self.settings.showPurchasedOnly = self.showPurchasedOnly
                //                                self.settings.maxPrice = self.maxPrice
                //
                self.presentationMode.wrappedValue.dismiss()
                print("Guardar Informacion")
            }, label: {
                Image(systemName: "checkmark.icloud")
                    .font(.title)
                    .foregroundColor(.gray)
            })
            )
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
