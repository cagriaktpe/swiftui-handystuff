//
//  NavigationViewExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 30.12.2023.
//

import SwiftUI

struct NavigationViewExampleView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                // background
                Color(UIColor.secondarySystemBackground)
                    .ignoresSafeArea()

                // content
                contentLayer
            }
        }
    }

    var contentLayer: some View {
        ScrollView {
            NavigationLink(destination: MyOtherScreenView()) {
                Text("Navigation Link")
            }

            Text("Hello, World!")
            Text("Hello, World!")
            Text("Hello, World!")
        }
        .navigationTitle("Title")
//        .navigationBarTitleDisplayMode(.inline)
//        .toolbar(.hidden)
        .toolbar {
            ToolbarItemGroup(placement: .topBarLeading) {
                Button {
                    
                } label: {
                    Image(systemName: "globe")
                }
                .tint(.red)
                
                Button {
                    
                } label: {
                    Image(systemName: "bell")
                }
                .tint(.orange)
            }
            
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    
                } label: {
                    Image(systemName: "gear")
                }
            }
        }
    }
}

struct MyOtherScreenView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            // background
            Color.green
                .ignoresSafeArea()

            // content
            ScrollView {
                Text("Destination Screen")
                    .navigationTitle("Other Screen")
                    //.toolbar(.hidden)
                
                NavigationLink(destination: Text("Third view")) {
                    Text("Go to third view")
                }
                
                Button("Dismiss") {
                    dismiss()
                }
                .padding()
                .padding(.horizontal)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            }
        }
    }
}

#Preview {
    NavigationViewExampleView()
}
