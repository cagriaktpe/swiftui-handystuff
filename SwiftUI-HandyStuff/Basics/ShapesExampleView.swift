//
//  ShapesExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 23.12.2023.
//

import SwiftUI

struct ShapesExampleView: View {
    var body: some View {
        //Circle()
            //.fill(Color.blue)
            //.foregroundStyle(.red
            //.stroke()
            //.stroke(Color.blue, lineWidth: 10)
            //.stroke(.orange, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [50]))
            //.trim(from: 0.2, to: 1)
            //.stroke(.purple, lineWidth: 50)
        //Ellipse()
            //.frame(width: 200, height: 100)
        //Capsule(style: .continuous)
            //.frame(width: 400, height: 200)
        //Rectangle()
            //.frame(width: 200, height: 100)
        RoundedRectangle(cornerRadius: 25.0)
            //.frame(width: 200, height: 100)
            //.foregroundStyle(.blue)
            //.shadow(radius: 10)
    }
}

#Preview {
    ShapesExampleView()
}
