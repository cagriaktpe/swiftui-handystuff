//
//  BindingExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 29.12.2023.
//

import SwiftUI

struct BindingExampleView: View {
    
    @State private var backgroundColor: Color = Color.red
    @State private var title: String = "Title"
    
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea()
            
            // content
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text(title)
                .foregroundStyle(.white)
            
            ButtonView(backgroundColor: $backgroundColor, title: $title)
        }
    }
}

struct ButtonView: View {
    
    @State private var buttonColor: Color = Color.blue

    @Binding var backgroundColor: Color
    @Binding var title: String
    
    var body: some View {
        Button {
            backgroundColor = .green
            buttonColor = .yellow
            title = "New title"
        } label: {
            Text("Button")
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}

#Preview {
    BindingExampleView()
}
