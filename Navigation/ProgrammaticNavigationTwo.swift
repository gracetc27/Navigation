//
//  ProgrammaticNavigationTwo.swift
//  Navigation
//
//  Created by Grace couch on 09/09/2024.
//

import SwiftUI

struct ProgrammaticNavigationTwo: View {
    @State private var path = NavigationPath()

    var body: some View {
        NavigationStack(path: $path) {
            List {
                ForEach(1..<6) { i in
                    NavigationLink("Select Number \(i)", value: i)
                }
                ForEach(1..<6) { i in
                    NavigationLink("Select String \(i)", value: String(i))
                }
            }
            .toolbar {
                Button("Push 556") {
                    path.append(556)
                }
                Button("Push Hello") {
                    path.append("Hello")
                }
            }
            .navigationDestination(for: Int.self) { number in
                Text("You selected the number \(number)")
            }
            .navigationDestination(for: String.self) { string in
                Text("You selected the number \(string)")
            }
        }
    }
}

#Preview {
    ProgrammaticNavigationTwo()
}
