//
//  macMenuBarWindowApp.swift
//  macMenuBarWindow
//
//  Created by KUNAL BATRA on 11/21/24.
//

import SwiftUI

@main
struct macMenuBarWindowApp: App {
    var body: some Scene {

        MenuBarExtra(content: {
                    ContentView()
                }, label: {
                    HStack {
                       Image(systemName: "circle.fill") //adds image to menubar
                       Text("MENU")
                    }
                })
                .menuBarExtraStyle(.window)
    }
}
