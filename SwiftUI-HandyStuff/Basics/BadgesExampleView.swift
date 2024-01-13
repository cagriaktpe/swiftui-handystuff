//
//  BadgesExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 13.01.2024.
//

import SwiftUI

// List
// TabView

struct BadgesExampleView: View {
    var body: some View {
//        TabView {
//            Color.red
//                .tabItem {
//                    Label("Red", systemImage: "heart.fill")
//                }
//                .badge(2)
//            
//            Color.blue
//                .tabItem {
//                    Label("Blue", systemImage: "globe")
//                }
//                .badge(0)
//            
//            Color.green
//                .tabItem {
//                    Label("Green", systemImage: "gear")
//                }
//                .badge("NEW")
//        }
        List {
            Text("Hello, World!")
                .badge("NEW ITEMS")
            
            Text("Hello, World!")
                .badge(5)
            
            Text("Hello, World!")
            
            Text("Hello, World!")
        }
    }
}

#Preview {
    BadgesExampleView()
}
