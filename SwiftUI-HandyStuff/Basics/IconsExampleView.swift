//
//  IconsExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 26.12.2023.
//

import SwiftUI

struct IconsExampleView: View {
    var body: some View {
        Image(systemName: "person.badge.plus.fill")
            .renderingMode(.original)
            .font(.largeTitle)
            //.font(.system(size: 100))
            //.resizable()
            //.aspectRatio(contentMode: .fit)
            //.scaledToFill()
            //.foregroundStyle(.blue)
            //.frame(width: 300, height: 300)
            //.clipped()
    }
}

#Preview {
    IconsExampleView()
}
