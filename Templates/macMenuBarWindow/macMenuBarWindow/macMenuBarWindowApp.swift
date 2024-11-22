import SwiftUI // Apple's modern toolkit for building apps on Mac and iOS.

@main // Marks the starting point of the app.
struct macMenuBarWindowApp: App {
    var body: some Scene {
        // `MenuBarExtra` creates a menu bar app.
        // The `.window` style makes the menu content appear in a detachable window.
        MenuBarExtra(content: {
            ContentView() // Defines the content displayed in the menu bar app's window.
        }, label: {
            // This defines how the menu bar entry looks.
            HStack {
                Image(systemName: "circle.fill") // Adds an icon to the menu bar entry.
                Text("MENU") // Adds text next to the icon.
            }
        })
        .menuBarExtraStyle(.window) // Enables the `.window` style for the menu bar app.
    }
}

#Preview {
    ContentView()
}
