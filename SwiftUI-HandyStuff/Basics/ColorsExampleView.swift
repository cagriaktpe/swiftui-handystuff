//
//  ColorsExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 25.12.2023.
//

import SwiftUI

struct ColorsExampleView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .frame(width: 200, height: 100)
            .foregroundStyle(
                //.primary
                //Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
            //.shadow(radius: 10)
            .shadow(color: Color("CustomColor").opacity(0.3), radius: 10, x: -20, y: -20)
    }
}

#Preview {
    ColorsExampleView()
}
