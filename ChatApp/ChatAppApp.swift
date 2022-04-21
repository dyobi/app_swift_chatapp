//
//  ChatAppApp.swift
//  ChatApp
//
//  Created by Dyobi on 4/21/22.
//

import SwiftUI
import Firebase

@main
struct ChatAppApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    } // body
    
}
