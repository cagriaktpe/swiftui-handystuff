//
//  DarkModeExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 6.01.2024.
//

import SwiftUI

struct DarkModeExampleView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    Text("This color is PRIMARY")
                        .foregroundStyle(.primary)
                    
                    Text("This color is SECONDARY")
                        .foregroundStyle(.secondary)
                    
                    Text("This color is BLACK")
                        .foregroundStyle(.black)
                    
                    Text("This color is WHITE")
                        .foregroundStyle(.white)
                    
                    Text("This color is GLOBALLY ADAPTIVE")
                        .foregroundStyle(Color("AdaptiveColor"))
                    
                    Text("This color is LOCALLY ADAPTIVE")
                        .foregroundStyle(colorScheme == .dark ? .white : .black)
                }
            }
            .navigationTitle("Dark Mode Example")
        }
    }
}

#Preview {
    DarkModeExampleView()
}
