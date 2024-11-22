import SwiftUI // We're using SwiftUI, Apple's modern toolkit for building apps on Mac and iOS. It's designed to make development faster, easier, and more fun.

@main // This tells Swift that this is where the app starts running.
struct macMenuBarClassicApp: App {
    var body: some Scene {
        // `MenuBarExtra` creates a menu bar app. Unlike a regular macOS app,
        // a menu bar app lives in the macOS menu bar instead of having a main window.
        
        // Using text + emoji as the menu bar label ("MENU 🥑").
        MenuBarExtra("MENU 🥑") {
            
            // Tip: If you want to use an icon instead of text, uncomment the line below:
            // MenuBarExtra("", systemImage: "cloud") { ... }
            
            // Creates a menu item labeled "Item A".
            Button("Item A") {
                print("Item A selected") // Prints to the Xcode console when clicked.
            }
            .keyboardShortcut("A") // Adds a keyboard shortcut (Cmd + A).
            
            // Creates a second menu item labeled "Item B".
            Button("Item B") {
                print("Item B selected")
            }
            .keyboardShortcut("B") // Shortcut: Cmd + B.
            
            // A submenu with two options ("Submenu A").
            Menu("Submenu A") {
                Button("Nested #1") {
                    print("Nested #1 selected")
                }
                Button("Nested #2") {
                    print("Nested #2 selected")
                }
            }
            
            // Another submenu with two options ("Submenu B").
            Menu("Submenu B") {
                Button("Nested #1") {
                    print("Nested B #1 selected")
                }
                Button("Nested #2") {
                    print("Nested B #2 selected")
                }
            }
            
            // Adds a horizontal line to separate menu sections for better organization.
            Divider()
            
            // A button to quit the app. This is essential for menu bar apps since they often lack traditional windows or dock icons.
            Button("Quit") {
                NSApplication.shared.terminate(nil) // Terminates the app.
            }
        }
    }
}
