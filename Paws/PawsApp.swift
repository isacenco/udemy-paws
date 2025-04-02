//
//  PawsApp.swift
//  Paws
//
//  Created by Ghenadie Isacenco on 2/4/25.
//

import SwiftUI
import SwiftData

@main
struct PawsApp: App {
  var body: some Scene {
    WindowGroup {
      ContentView()
        .modelContainer(for: Pet.self)
    }
  }
}
