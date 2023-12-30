//
//  AnimationTimingExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 30.12.2023.
//

import SwiftUI

struct AnimationTimingExampleView: View {
    @State var isAnimating: Bool = false
    let timing: Double = 10.0

    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }

            RoundedRectangle(cornerRadius: 20)
                .fill(Color.red)
                .frame(
                    width: isAnimating ? 350 : 50,
                    height: 100
                )
                // .animation(Animation.linear(duration: timing), value: isAnimating)
                .animation(
                    .spring(
                        response: 0.5,
                        dampingFraction: 0.7,
                        blendDuration: 1.0
                    ),
                    value: isAnimating
                )

//            RoundedRectangle(cornerRadius: 20)
//                .fill(Color.red)
//                .frame(
//                    width: isAnimating ? 350 : 50,
//                    height: 100
//                )
//                .animation(Animation.easeIn(duration: timing), value: isAnimating)
//
//            RoundedRectangle(cornerRadius: 20)
//                .fill(Color.red)
//                .frame(
//                    width: isAnimating ? 350 : 50,
//                    height: 100
//                )
//                .animation(Animation.easeInOut(duration: timing), value: isAnimating)
//
//            RoundedRectangle(cornerRadius: 20)
//                .fill(Color.red)
//                .frame(
//                    width: isAnimating ? 350 : 50,
//                    height: 100
//                )
//                .animation(Animation.easeOut(duration: timing), value: isAnimating)
        }
    }
}

#Preview {
    AnimationTimingExampleView()
}
