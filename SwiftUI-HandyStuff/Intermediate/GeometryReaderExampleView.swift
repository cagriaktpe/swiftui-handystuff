//
//  GeometryReaderExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 14.03.2024.
//

import SwiftUI

// struct GeometryReaderExampleView: View {
//    var body: some View {
//        GeometryReader { geo in
//            HStack(spacing: 0) {
//                Rectangle()
//                    .fill(Color.yellow)
//                    .frame(width: geo.size.width * 0.6666)
//
//                Rectangle()
//                    .fill(Color.red)
//            }
//            .ignoresSafeArea()
//        }
//    }
// }

struct GeometryReaderExampleView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0 ..< 20) { _ in
                    GeometryReader { geo in
                        RoundedRectangle(cornerRadius: 20)
                            .rotation3DEffect(
                                Angle(degrees: getPercentage(geo: geo) * 40),
                                axis: (x: 0.0, y: 1.0, z: 0.0)
                            )
                    }
                    .frame(width: 300, height: 250)
                    .padding()
                }
            }
        }
    }
}

extension GeometryReaderExampleView {
    func getPercentage(geo: GeometryProxy) -> Double {
        let maxDistance = UIScreen.main.bounds.width / 2
        let currentDistance = geo.frame(in: .global).midX
        return 1 - (Double(currentDistance / maxDistance))
    }
}

#Preview {
    GeometryReaderExampleView()
}
