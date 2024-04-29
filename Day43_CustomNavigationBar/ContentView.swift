//
//  ContentView.swift
//  Day43_CustomNavigationBar
//
//  Created by Bruno Oliveira on 29/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List(0..<100) { i in
                Text("Row \(i)")
            }
            .navigationTitle("Title goes Here")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(.blue, for: .navigationBar)
            .toolbarColorScheme(.dark)
            //Later on you'll meet other kinds of toolbars. Those two modifiers affect all bars, but if you want to just modify the navigation bar you should add for: .navigationBar as a second parameter to both of them.
            .toolbar(.hidden, for: .navigationBar) // one more way to customize navigation bar
        }
    }
}

#Preview {
    ContentView()
}
