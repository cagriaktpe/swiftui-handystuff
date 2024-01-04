//
//  TextFieldExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 4.01.2024.
//

import SwiftUI

struct TextFieldExampleView: View {
    @State private var textFieldText: String = ""
    @State private var dataArray: [String] = []

    var body: some View {
        NavigationStack {
            VStack {
                TextField("Type here...", text: $textFieldText)
                    //            .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(
                        Color(UIColor.secondarySystemBackground)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    )
                    .shadow(radius: 5)
                    .foregroundStyle(.blue)
                    .font(.headline)
                    .padding(.bottom)

                Button {
                    saveText()
                } label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(isTextAppropriate() ? Color.blue : Color.gray)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .shadow(radius: 5)
                        .foregroundStyle(.white)
                        .font(.headline)
                }
                .disabled(!isTextAppropriate())
                
                ForEach(dataArray, id: \.self) { item in
                    Text(item)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextField Example!")
        }
    }
    
    func isTextAppropriate() -> Bool {
        return textFieldText.count > 3
    }
    
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

#Preview {
    TextFieldExampleView()
}
