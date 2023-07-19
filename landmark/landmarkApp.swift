//
//  landmarkApp.swift
//  landmark
//
//  Created by Bohlale Manage on 2023/06/14.
//

import SwiftUI

@main
struct landmarkApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
