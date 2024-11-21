//
//  macMenuBarClassicApp.swift
//  macMenuBarClassic
//
//  Created by KUNAL BATRA on 11/21/24.
//

import SwiftUI

@main
struct macMenuBarClassicApp: App {
    var body: some Scene {
       /* WindowGroup {
            ContentView()
        }*/
        MenuBarExtra("MENU") {
            Button("Item A") {
                print("Item A selected")
            }
            .keyboardShortcut("A")
            Button("Item B") {
                print("Item B selected")
            }
            .keyboardShortcut("B")
            Button("Item C") {
                print("Item C selected")
            }
            .keyboardShortcut("C")
            Menu("Submenu A") {
                    Button("Nested #1") {}
                    Button("Nested #2") {}
                    Button("Nested #3") {}
                }
            Menu("Submenu B") {
                    Button("Nested #1") {}
                    Button("Nested #2") {}
                    Button("Nested #3") {}
                }
            Divider()
                        Button("Quit") {  // Button to quit the app
                            NSApplication.shared.terminate(nil)
                        }
        }
    }
}
