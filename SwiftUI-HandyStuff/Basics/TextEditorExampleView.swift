//
//  TextEditorExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 4.01.2024.
//

import SwiftUI

struct TextEditorExampleView: View {
    
    @State private var textEditorText: String = ""
    @State private var savedText: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .foregroundStyle(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Button {
                    savedText = textEditorText
                } label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                
                Text(savedText)
                
                Spacer()
            }
            .padding()
//            .background(Color.green)
            .navigationTitle("Text Editor Example")
        }
    }
}

#Preview {
    TextEditorExampleView()
}
