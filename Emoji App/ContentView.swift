//
//  ContentView.swift
//  Emoji App
//
//  Created by Connor on 10/4/26.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case laugh = "😭"
    case smirk = "😏"
    case rocket = "🚀"
    case monkey = "🐵"
}

struct ContentView: View {
    @State var selection: Emoji = .laugh
    
    var body: some View {
        NavigationView {
            VStack {
                Text(selection.rawValue)
                    .font(.system(size: 100))
                
                Picker("Select Emoji", selection: $selection) {
                    ForEach(Emoji.allCases, id: \.self) {
                        emoji in Text(emoji.rawValue)
                    }
                }
                .pickerStyle(.segmented)
            }
            .navigationTitle("Emoji Picker")
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
