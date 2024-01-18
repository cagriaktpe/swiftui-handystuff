//
//  SafeAreaInsetExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 18.01.2024.
//

import SwiftUI

struct SafeAreaInsetExampleView: View {
    var body: some View {
        NavigationStack {
            List(0 ..< 10) { _ in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("Safe Area Insets")
//            .overlay(
//                Text("Hello")
//                    .frame(maxWidth: .infinity)
//                    .background(Color.yellow)
//                ,alignment: .bottom
//            )
//            .safeAreaInset(edge: .bottom) {
//                Text("Hello")
//                    .frame(maxWidth: .infinity)
//                    .background(Color.yellow)
//            }
//            .safeAreaInset(edge: .bottom, alignment: .trailing) {
//                Text("Hi")
//                    .padding()
//                    .background(Color.yellow)
//                    .clipShape(Circle())
//                    .padding()
//            }
            .safeAreaInset(edge: .top, alignment: .trailing) {
                Text("Hi")
                    .frame(maxWidth: .infinity)
                    .background(Color.yellow.ignoresSafeArea(edges: [.bottom]))
            }
        }
    }
}

#Preview {
    SafeAreaInsetExampleView()
}
