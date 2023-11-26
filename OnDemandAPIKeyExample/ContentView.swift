//
//  ContentView.swift
//  OnDemandAPIKeyExample
//
//  Created by Toomas Vahter on 25.11.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var keys: String = ""

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Button("Show API Keys", action: showAPIKeys)
            Text(keys)
        }
        .padding()
    }

    func showAPIKeys() {
        keys =  """
                \(Constants.APIKeys.mySecretAPIKey)
                \(Constants.APIKeys.mySecretAPIKey2)
                """
    }
}

#Preview {
    ContentView()
}
