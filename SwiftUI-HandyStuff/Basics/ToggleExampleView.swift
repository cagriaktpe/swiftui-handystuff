//
//  ToggleExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 4.01.2024.
//

import SwiftUI

struct ToggleExampleView: View {
    
    @State private var isToggleOn: Bool = true
    
    var body: some View {
        VStack {
            HStack {
                Text("Status: ")
                Text(isToggleOn ? "Online" : "Offline")
            }
            .font(.title)
            
            Toggle(isOn: $isToggleOn) {
                Text("Change status")
            }
            .tint(.red)
            
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

#Preview {
    ToggleExampleView()
}
