//
//  ToolbarExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 16.01.2024.
//

import SwiftUI

struct ToolbarExampleView: View {
    
    @State private var text: String = ""
    @State private var paths: [String] = []
    
    var body: some View {
        NavigationStack(path: $paths) {
            ZStack {
                // background
                Color.white.ignoresSafeArea()
                
                // foreground
                ScrollView {
                    TextField("Placeholder", text: $text)
                    
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .foregroundStyle(.blue)
                            .frame(width: 200, height: 200)
                            .padding()
                    }
                }
                
                
            }
            .navigationTitle("Toolbar")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "heart.fill")
                }
                 
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "gear")
                }
            }
            .navigationBarTitleDisplayMode(.inline)
//            .toolbar(.hidden, for: .tabBar)
//            .toolbarBackground(.hidden, for: .nav igationBar)
//            .toolbarColorScheme(.dark, for: .navigationBar)
            .toolbarTitleMenu {
                Button("Screen 1") {
                    paths.append("Screen 1")
                }
                
                Button("Screen 2") {
                    paths.append("Screen 2")
                }
                
                Button("Screen 3") {
                    paths.append("Screen 3")
                }
            }
            .navigationDestination(for: String.self) { value in
                Text("Destination: \(value)")
            }
        }
    }
}

#Preview {
    ToolbarExampleView()
}
