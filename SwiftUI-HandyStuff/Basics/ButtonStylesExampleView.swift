//
//  ButtonStylesExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 12.01.2024.
//

import SwiftUI

struct ButtonStylesExampleView: View {
    var body: some View {
        
        VStack {
            // button sizes depends on the label
            Button {
                
            } label: {
                Text("Button Title")
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
            }
            .controlSize(.large)
            .buttonBorderShape(.roundedRectangle)
            .buttonStyle(.borderedProminent)

            
            Button("Button Title") {
                
            }
//            .buttonStyle(.plain)
            .controlSize(.large)
            .buttonStyle(.borderedProminent)
            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.regular)
//            .buttonStyle(.bordered)
            .buttonStyle(.borderedProminent)
            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.small)
            .buttonStyle(.borderedProminent)
            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
//            .buttonStyle(.borderless)
            .controlSize(.mini)
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    ButtonStylesExampleView()
}
