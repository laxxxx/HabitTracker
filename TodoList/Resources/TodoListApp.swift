//
//  TodoListApp.swift
//  TodoList
//
//  Created by Sree Lakshman on 19/11/24.
//

import SwiftUI
import FirebaseCore

@main
struct TodoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
