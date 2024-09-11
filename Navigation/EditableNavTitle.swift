//
//  EditableNavTitle.swift
//  Navigation
//
//  Created by Grace couch on 11/09/2024.
//

import SwiftUI

struct EditableNavTitle: View {
    @State private var navTitle = "SwiftUI"
    var body: some View {
        NavigationStack {
                Text("Editable Navigation Title")
                .navigationTitle($navTitle)
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    EditableNavTitle()
}
