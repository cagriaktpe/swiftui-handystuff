//
//  TapGestureView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 6.01.2024.
//

import SwiftUI

struct TapGestureView: View {
    
    @State private var isSelected: Bool = false
    
    var body: some View {
        VStack(spacing: 40) {
            RoundedRectangle(cornerRadius: 20)
                .fill(isSelected ? Color.green : Color.gray)
                .frame(height: 200)
                .onTapGesture {
                    print("Tapped!")
                }
            
            Button(action: {
                isSelected.toggle()
            }, label: {
                Text("Button")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
            })
            
            Text("TAP Gesture")
                .font(.headline)
                .foregroundStyle(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 15))
//                .onTapGesture {
//                    isSelected.toggle()
//                }
                .onTapGesture(count: 2) {
                    isSelected.toggle()
                }
            
            Spacer()
        }
        .padding(40)
    }
}

#Preview {
    TapGestureView()
}
