//
//  ContextMenuExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 4.01.2024.
//

import SwiftUI

struct ContextMenuExampleView: View {
    
    @State private var backgroundColor: Color = Color.purple
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            
            Text("Çağrı Aktepe")
                .font(.headline)
            
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundStyle(.white)
        .padding(30)
        .background(
            backgroundColor
                .clipShape(RoundedRectangle(cornerRadius: 30))
        )
        .contextMenu {
            
            Button {
                backgroundColor = .blue
            } label: {
                Label("Share", systemImage: "flame.fill")
            }

            Button {
                backgroundColor = .red
            } label: {
                Text("Report")
            }
            
            Button {
                backgroundColor = .yellow
            } label: {
                HStack {
                    Text("Like")
                    Spacer()
                    Image(systemName: "heart.fill")
                }
            }
        } preview: {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 300, height: 300)
                .foregroundColor(.red)
                .overlay(
                    Text("I AM A PREVIEW")
                        .font(.title)
                        .foregroundColor(.white)
                )
        }
    }
}

#Preview {
    ContextMenuExampleView()
}
