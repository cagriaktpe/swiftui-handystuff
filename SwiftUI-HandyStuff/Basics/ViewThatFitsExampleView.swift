//
//  ViewThatFitsExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 26.01.2024.
//

import SwiftUI

struct ViewThatFitsExampleView: View {
    var body: some View {
        ZStack {
            // background
            Color.red.ignoresSafeArea()
            
            // foreground
//            Text("This is some text that I would like to display to the user")
//                .lineLimit(1)
//                .minimumScaleFactor(0.3)
            
            ViewThatFits {
                Text("This is some text that I would like to display to the user")
                Text("This is some text that I would like to display")
                Text("This is some text")
            }
        }
        .frame(height: 300)
        .padding(50)
        .font(.headline)
    }
}

#Preview {
    ViewThatFitsExampleView()
}
