//
//  ProgrammaticNavigation.swift
//  Navigation
//
//  Created by Grace couch on 09/09/2024.
//

import SwiftUI

struct ProgrammaticNavigation: View {
    @State private var path = [Int]()

    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                Button("Show 27") {
                    path = [27]
                }
                Button("Show 38") {
                    path.append(38)
                }
                Button("Show 27 then 38") {
                    path = [38, 27]
                }

            }
            .navigationDestination(for: Int.self) { selection in
                Text("You have selected \(selection)")
            }
        }
    }
}

#Preview {
    ProgrammaticNavigation()
}
