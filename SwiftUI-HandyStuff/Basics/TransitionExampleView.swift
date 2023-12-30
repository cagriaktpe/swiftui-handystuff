//
//  TransitionExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 30.12.2023.
//

import SwiftUI

struct TransitionExampleView: View {
    @State private var showView: Bool = false

    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("Button") {
                    withAnimation(.spring) {
                        showView.toggle()
                    }
                }

                Spacer()
            }

//            if showView {
//                RoundedRectangle(cornerRadius: 30)
//                    .fill(Color.red)
//                    .frame(height: UIScreen.main.bounds.height * 0.5)
//                    .transition(.move(edge: .bottom))
//            }

            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.red)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    // .transition(AnyTransition.opacity.animation(.easeInOut(duration: 1.0)))
                    // .transition(AnyTransition.scale.animation(.easeInOut(duration: 1.0)))
                    .transition(
                        AnyTransition
                            .asymmetric(
                                insertion: .move(edge: .bottom),
                                removal: AnyTransition.opacity.animation(.easeInOut)
                            )
                    )
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    TransitionExampleView()
}
