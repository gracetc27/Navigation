//
//  CustomisingNavBar.swift
//  Navigation
//
//  Created by Grace couch on 11/09/2024.
//

import SwiftUI

struct CustomisingNavBar: View {
    var body: some View {
        NavigationStack {
            List(0..<100) { i in
                Text("Row \(i)")
            }
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("tap me") {}
                }
            }
            .navigationTitle("Title")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarColorScheme(.dark, for: .navigationBar)
            .toolbarBackground(.blue, for: .navigationBar)
        }
    }
}

#Preview {
    CustomisingNavBar()
}
