//
//  DragGestureExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 11.03.2024.
//

import SwiftUI

struct DragGestureExampleView: View {
    @State private var offset: CGSize = .zero

    var body: some View {
//        RoundedRectangle(cornerRadius: 20)
//            .frame(width: 100, height: 100)
//            .offset(offset)
//            .gesture(
//                DragGesture()
//                    .onChanged { value in
//                        offset = value.translation
//                    }
//                    .onEnded { _ in
//                        withAnimation(.spring()) {
//                            offset = .zero
//                        }
//                    }
//            )
        ZStack {
            
            VStack {
                Text("\(offset.width)")
                Spacer()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 300, height: 500)
                .offset(offset)
                .scaleEffect(getScaleAmount())
                .rotationEffect(getRotationAmount())
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            offset = value.translation
                        }
                        .onEnded { _ in
                            withAnimation(.spring()) {
                                offset = .zero
                            }
                        }
            )
        }
    }
    
    func getScaleAmount() -> CGFloat {
        let max = UIScreen.main.bounds.width / 2
        let currentAmount = abs(offset.width)
        let percentage = currentAmount / max
        return 1.0 - min(percentage, 0.5) * 0.5
    }
    
    func getRotationAmount() -> Angle {
        let max = UIScreen.main.bounds.width / 2
        let currentAmount = offset.width
        let percentage = currentAmount / max
        let percentageAsDouble = Double(percentage)
        let maxAngle: Double = 10
        return Angle(degrees: maxAngle * percentageAsDouble)
    }
}

#Preview {
    DragGestureExampleView()
}
