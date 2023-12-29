//
//  StateExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 29.12.2023.
//

import SwiftUI

struct StateExampleView: View {
    
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea()
            
            // foreground
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("Change to Red") {
                        backgroundColor = Color.red
                        myTitle = "Button #1 pressed!"
                        count += 1
                    }
                    
                    Button("Change to Blue") {
                        backgroundColor = Color.blue
                        myTitle = "Button #2 pressed!"
                        count -= 1
                    }
                }
            }
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    StateExampleView()
}
