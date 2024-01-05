//
//  ColorPickerExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 5.01.2024.
//

import SwiftUI

struct ColorPickerExampleView: View {
    
    @State private var backgroundColor: Color = .red
    
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea()
            
            // content
            ColorPicker("Select a color", selection: $backgroundColor, supportsOpacity: true)
                .padding()
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding()
        }
    }
}

#Preview {
    ColorPickerExampleView()
}
