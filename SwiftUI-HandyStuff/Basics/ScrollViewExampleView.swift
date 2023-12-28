//
//  ScrollViewExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 28.12.2023.
//

import SwiftUI

struct ScrollViewExampleView: View {
    var body: some View {
//        ScrollView(.horizontal) {
//            HStack {
//                ForEach(0 ..< 50) { _ in
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: 300, height: 300)
//                }
//            }
//        }
//        .scrollIndicators(.hidden)

        ScrollView {
            LazyVStack {
                ForEach(0 ..< 100) { _ in
                    ScrollView(.horizontal) {
                        LazyHStack {
                            ForEach(0 ..< 20) { _ in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                    .scrollIndicators(.hidden)
                }
            }
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    ScrollViewExampleView()
}
