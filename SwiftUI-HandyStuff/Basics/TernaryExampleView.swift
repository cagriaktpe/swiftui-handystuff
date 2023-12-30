//
//  TernaryExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 30.12.2023.
//

import SwiftUI

struct TernaryExampleView: View {
    
    @State private var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "Starting State".uppercased() : "Ending State".uppercased())
            
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? .red : .blue)
                .frame(
                    width: isStartingState ? 200 : 50,
                    height: isStartingState ? 400 : 50
                )
            
            Spacer()
        }
    }
}

#Preview {
    TernaryExampleView()
}
