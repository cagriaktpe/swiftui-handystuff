//
//  MenuExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 20.01.2024.
//

import SwiftUI

struct MenuExampleView: View {
    var body: some View {
        Menu("Click me!") {
            Button("Action 1") {}
            Button("Action 2") {}
            Button("Action 3") {}
        }
    }
}

#Preview {
    MenuExampleView()
}
