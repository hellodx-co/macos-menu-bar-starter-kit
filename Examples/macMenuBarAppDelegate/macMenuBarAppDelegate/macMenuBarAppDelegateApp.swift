//
//  macMenuBarAppDelegateApp.swift
//  macMenuBarAppDelegate
//
//  Created by KUNAL BATRA on 11/21/24.
//

import SwiftUI

@main
struct macMenuBarAppDelegateApp: App {
    // Attach AppDelegate
        @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {

        MenuBarExtra(content: {
                    ContentView()
                }, label: {
                    HStack {
                       //Image(systemName: "heart.fill") //adds image to menubar
                       Text("MENU")
                    }
                })
                .menuBarExtraStyle(.window)
    }
}

class AppDelegate: NSObject, NSApplicationDelegate {
    //The AppDelegate class handles lifecycle events for your application. You can take advantage of the functions below to run logic at time of app launch as well as app termination.
    
    var statusBarItem: NSStatusItem?

    func applicationDidFinishLaunching(_ notification: Notification) {
        //Run below when app launches
    
        print("App Launched with AppDelegate!")
    }

    func applicationWillTerminate(_ notification: Notification) {
        // Run below when app termination begins
        
        print("App is about to quit.")
    }
}
