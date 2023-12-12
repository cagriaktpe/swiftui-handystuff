//
//  PageTabViewExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 11.12.2023.
//

import SwiftUI

struct PageTabViewExampleView: View {
    
    let icons: [String] = [
        "heart.fill",
        "globe",
        "house.fill",
        "person.fill"
    ]
    
    var body: some View {
        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .font(.system(size: 200))
                    .foregroundColor(.black)
            }
        }
        .background(
            RadialGradient(
                gradient: Gradient(colors: [.red, .blue]),
                center: .center,
                startRadius: 5,
                endRadius: 300
            )
        )
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    PageTabViewExampleView()
}
