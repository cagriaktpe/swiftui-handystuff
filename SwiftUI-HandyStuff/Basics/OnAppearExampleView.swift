//
//  OnAppearExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 6.01.2024.
//

import SwiftUI

struct OnAppearExampleView: View {
    
    @State private var myText: String = "Start text"
    @State private var count: Int = 0
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Text(myText)
                    .font(.headline)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundColor(.blue)
                            .frame(height: 200)
                            .padding()
                            .onAppear() {
                                count += 1
                            }
                    }
                }
            }
            .navigationTitle("Count: \(count)")
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    myText = "New text"
                }
            }
            .onDisappear {
                myText = "Ending text"
            }
        }
    }
}

#Preview {
    OnAppearExampleView()
}
