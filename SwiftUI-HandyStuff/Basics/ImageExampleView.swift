//
//  ImageExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 26.12.2023.
//

import SwiftUI

struct ImageExampleView: View {
    var body: some View {
        /*
        Image("Koln")
            .resizable()
            //.aspectRatio(contentMode: .fill)
            .scaledToFit()
            .frame(width: 300, height: 200)
            //.clipped()
            /*
            .clipShape(
                //Circle()
                //RoundedRectangle(cornerRadius: 20)
                //Ellipse()
            )
             */
         */
        Image("GoogleLogo")
            //.renderingMode(.template) // also can changeble in assets
            .resizable()
            .scaledToFit()
            .frame(width: 300, height: 200)
            .foregroundStyle(.red)
    }
}

#Preview {
    ImageExampleView()
}
