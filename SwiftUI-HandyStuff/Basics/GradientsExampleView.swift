//
//  GradientsExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 26.12.2023.
//

import SwiftUI

struct GradientsExampleView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                /*
                 // one edge to another edge
                LinearGradient(
                    gradient: Gradient(colors: [Color("CoolBlue"), Color("CoolBlue2"),]),
                    startPoint: .topLeading,
                    endPoint: .bottom
                )
                 */
                /* uses circles
                RadialGradient(
                    gradient: Gradient(colors: [Color("CoolBlue"), Color("CoolBlue2"),]),
                    center: .topLeading,
                    startRadius: 5,
                    endRadius: 400
                )
                 */
                AngularGradient(
                    gradient: Gradient(colors: [Color("CoolBlue"), Color("CoolBlue2")]),
                    center: .topLeading,
                    angle: .degrees(180 + 45)
                )
            )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    GradientsExampleView()
}
