//
//  SwiftDataDemoApp.swift
//  SwiftDataDemo
//
//  Created by Rachael LaMassa on 1/8/25.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: DataItem.self) // create container that stores instances of DataItems
    }
}
