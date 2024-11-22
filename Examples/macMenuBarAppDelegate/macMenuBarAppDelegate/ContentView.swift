//
//  ContentView.swift
//  macMenuBarAppDelegate
//
//  Created by KUNAL BATRA on 11/21/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Button(action: {
                        NSApplication.shared.terminate(self)
                    }, label: {
                        Text("Close App")
                    })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

