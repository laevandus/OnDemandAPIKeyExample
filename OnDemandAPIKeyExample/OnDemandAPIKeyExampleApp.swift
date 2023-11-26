//
//  OnDemandAPIKeyExampleApp.swift
//  OnDemandAPIKeyExample
//
//  Created by Toomas Vahter on 25.11.2023.
//

import SwiftUI

@main
struct OnDemandAPIKeyExampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .task {
                    // TODO: Show a loading spinner while it loads and handle errors before showing main UI
                    do {
                        try await Constants.loadAPIKeys()
                    } catch {
                    }
                }
        }
    }
}
