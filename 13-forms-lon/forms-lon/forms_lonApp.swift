//
//  forms_lonApp.swift
//  forms-lon
//
//  Created by Rene Alonzo Choque Saire on 27/3/23.
//

import SwiftUI

@main
struct forms_lonApp: App {
    var body: some Scene {
        WindowGroup {
           ContentView().environmentObject(SettingsFactory())
//            SettingsView()
        }
    }
}
