//
//  FrameExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 27.12.2023.
//

import SwiftUI

struct FrameExampleView: View {
    var body: some View {
        /*
        Text("Hello, World!")
            .background(.green)
            //.frame(width: 300, height: 300, alignment: .leading)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .background(.red)
         */
        Text("Hello, World!")
            .background(.red)
            .frame(height: 100, alignment: .top)
            .background(.green)
            .frame(width: 150)
            .background(.blue)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.yellow)
            .frame(height: 400)
            .background(.orange)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(.purple)
    }
}

#Preview {
    FrameExampleView()
}
