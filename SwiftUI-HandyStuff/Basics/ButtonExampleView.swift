//
//  ButtonExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 29.12.2023.
//

import SwiftUI

struct ButtonExampleView: View {
    
    @State var title: String = "This is my title"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
                .font(.title)
            
            // MARK: BUTTON 1
            Button("Press me!") {
                self.title = "Button #1 pressed!"
            }
            .tint(.red)
            
            // MARK: BUTTON 2
            Button {
                self.title = "Button #2 pressed!"
            } label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .shadow(radius: 10)
                    )
            }
            
            // MARK: BUTTON 3
            Button {
                self.title = "Button #3 pressed!"
            } label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundStyle(Color.red)
                    )
            }
            
            // MARK: BUTTON 4
            Button {
                self.title = "Button #4 pressed!"
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundStyle(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    )
                    
            }

        }
    }
}

#Preview {
    ButtonExampleView()
}
