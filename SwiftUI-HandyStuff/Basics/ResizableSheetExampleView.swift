//
//  ResizableSheetExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 17.01.2024.
//

import SwiftUI

struct ResizableSheetExampleView: View {
    
    @State private var showSheet: Bool = false
    @State private var detents: PresentationDetent = .large
    
    var body: some View {
        Button("Click me!") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet, content: {
            MyNewView(detents: $detents)
//                .presentationDetents([.medium, .large])
//                .presentationDetents([.fraction(0.3), .medium, .large])
//                .presentationDetents([.height(200), .medium, .large])
                .presentationDetents([.medium, .large], selection: $detents)
//                .presentationDragIndicator(.hidden)
//                .interactiveDismissDisabled()
        })
//        .onAppear {
//            showSheet = true
//        }
    }
}

struct MyNewView: View {
    
    @Binding var detents: PresentationDetent
    
    var body: some View {
        ZStack {
            // background
            Color.blue.ignoresSafeArea()
            
            // foreground
            VStack(spacing: 20.0) {
                Button("MEDIUM") {
                    detents = .medium
                }
                .tint(.white)
                
                Button("LARGE") {
                    detents = .large
                }
                .tint(.white)
            }
        }
    }
}

#Preview {
    ResizableSheetExampleView()
}
