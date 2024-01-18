//
//  GroupExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 18.01.2024.
//

import SwiftUI

struct GroupExampleView: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Hello, World!")
            Group {
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .foregroundStyle(.blue)
            .font(.caption)
        }
        .foregroundStyle(.red)
    }
}

#Preview {
    GroupExampleView()
}
