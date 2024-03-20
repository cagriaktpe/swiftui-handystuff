//
//  MaskExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 20.03.2024.
//

import SwiftUI

struct MaskExampleView: View {
    @State private var rating: Int = 0

    var body: some View {
        ZStack {
            startsLayer
                .overlay(overlayLayer.mask(startsLayer))
        }
    }
    
    var startsLayer: some View {
        HStack {
            ForEach(1 ..< 6) { index in
                Image(systemName: "star.fill")
                    .font(.largeTitle)
                    .foregroundColor(.gray)
                    .onTapGesture {
                        withAnimation(.easeInOut) {
                            rating = index
                        }
                    }
            }
        }
    }
    
    var overlayLayer: some View {
        GeometryReader { geo in
            ZStack(alignment: .leading) {
                Rectangle()
                    //.foregroundStyle(.yellow)
                    .fill(LinearGradient(gradient: Gradient(colors: [.red, .yellow, .green]), startPoint: .leading, endPoint: .trailing))
                    .frame(width: CGFloat(rating) / 5 * geo.size.width)
            }
        }
        .allowsHitTesting(false)
    }
}

#Preview {
    MaskExampleView()
}
