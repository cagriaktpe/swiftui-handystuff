//
//  PaddingAndSpacerExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 27.12.2023.
//

import SwiftUI

struct PaddingAndSpacerExampleView: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(.yellow)
//            .padding()
//            .background(.blue)

//        Text("Hello, World!")
//            .font(.largeTitle)
//            .fontWeight(.semibold)
//            .frame(maxWidth: .infinity, alignment: .leading)
//            //.background(.red)
//            .padding(.leading, 20)

        VStack(alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("This is the description of what we will do on this screen. It is multiple lines and we will align the text to the leading edge")
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 10)
        )
        .padding(.horizontal)
    }
}

#Preview {
    PaddingAndSpacerExampleView()
}
