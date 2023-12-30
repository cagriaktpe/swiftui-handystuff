//
//  AnimationExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 30.12.2023.
//

import SwiftUI

struct AnimationExampleView: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                withAnimation(
                    Animation
                        .default
                        //.delay(2.0)
                        //.repeatCount(5, autoreverses: false)
                        //.repeatForever(autoreverses: true)
                ) {
                    isAnimated.toggle()
                }
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300
                )
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
            
            Spacer()
        }
    }
}

#Preview {
    AnimationExampleView()
}
