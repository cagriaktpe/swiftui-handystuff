//
//  TabViewExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 6.01.2024.
//

import SwiftUI

struct TabViewExampleView: View {
    
    @State private var selectedTab: Int = 0
    
    let icons: [String] = [
        "globe",
        "house.fill",
        "person.fill"
    ]
    
    var body: some View {
//        TabView(selection: $selectedTab) {
//            HomeView(selectedTab: $selectedTab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//            
//            Text("Browse Screen")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//                .tag(1)
//
//            
//            Text("Profile Screen")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("profile")
//                }
//                .tag(2)
//
//        }
//        .tint(.red)
        
        TabView {
            ForEach(icons, id: \.self) { icon in
                VStack {
                    Image(systemName: icon)
                        .font(.system(size: 160))
                        .foregroundColor(.red)
                    
                    Text(icon)
                        .font(.headline)
                        .foregroundColor(.red)
                }
            }
        }
        .background(
            RadialGradient(
                gradient: Gradient(colors: [.yellow, .orange]),
                center: .center,
                startRadius: 5,
                endRadius: 300
            )
        )
        .frame(height: 300)
        .tabViewStyle(.page)
    }
}

#Preview {
    TabViewExampleView()
}

struct HomeView: View {
    
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea(edges: .top)
            
            VStack {
                Text("HOME TAB")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Button {
                    selectedTab = 2
                } label: {
                    Text("Go to Profile")
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
            }
        }
    }
}
