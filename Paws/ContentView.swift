//
//  ContentView.swift
//  Paws
//
//  Created by Ghenadie Isacenco on 2/4/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
  @Environment(\.modelContext) var modelContext
  @Query private var pets: [Pet]
  
  var body: some View {
    NavigationStack {
      ScrollView {
        EmptyView()
      } //: SCROLLVIEW
      .overlay{
        if pets.isEmpty {
          CustomContentUnavailableView(
            icon: "dog.circle",
            title: "No Pets",
            description: "Add a new pet to get started."
          )
        }
      }
    } //: NAVSTACK
  }
}

#Preview("With Data") {
  ContentView()
}

#Preview("No Data") {
  ContentView()
    .modelContainer(for: Pet.self, inMemory: true)
}
