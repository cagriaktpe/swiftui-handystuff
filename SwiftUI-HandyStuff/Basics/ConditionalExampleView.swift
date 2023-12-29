//
//  ConditionalExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 29.12.2023.
//

import SwiftUI

struct ConditionalExampleView: View {
    
    @State private var showCircle: Bool = false
    @State private var showRectangle: Bool = false
    @State private var isLoading: Bool = false
    
    var body: some View {
        ZStack {
            // background
            Color(UIColor.secondarySystemBackground)
                .ignoresSafeArea()
            
            // content
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack(spacing: 20) {
            
            Button("IS LOADING: \(isLoading.description)") {
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView()
            }
            
//            Button("Circle button: \(showCircle.description)") {
//                showCircle.toggle()
//            }
//            
//            Button("Rectangle button: \(showRectangle.description)") {
//                showRectangle.toggle()
//            }
//            
//            if showCircle {
//                Circle()
//                    .frame(width: 100, height: 100)
//            }
//            
//            if showRectangle {
//                Rectangle()
//                    .frame(width: 100, height: 100)
//            }
//            
//            if !showCircle && !showRectangle {
//                RoundedRectangle(cornerRadius: 25)
//                    .frame(width: 200, height: 100)
//            }
            
            Spacer()
        }
    }
}

#Preview {
    ConditionalExampleView()
}
