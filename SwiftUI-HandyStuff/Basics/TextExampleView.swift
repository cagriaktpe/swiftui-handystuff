//
//  TextExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 23.12.2023.
//

import SwiftUI

/* using .font(.title) etc. that is resizing depends on the device */

struct TextExampleView: View {
    var body: some View {
        Text("Hello, World!".lowercased())
            //.font(.title)
            //.fontWeight(.thin)
            //.bold()
            //.underline()
            //.underline(true, color: .red)
            //.italic()
            //.strikethrough()
            //.strikethrough(true, color: .red)
            //.font(.system(size: 24, weight: .semibold, design: .serif))
            .multilineTextAlignment(.trailing)
            //.baselineOffset(10)
            //.kerning(10)
            .foregroundStyle(.blue)
            .frame(width: 200, height: 100, alignment: .leading)
            .minimumScaleFactor(0.1)
        
    }
}

#Preview {
    TextExampleView()
}
