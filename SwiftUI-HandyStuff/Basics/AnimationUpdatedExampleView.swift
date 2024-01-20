//
//  AnimationUpdatedExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 20.01.2024.
//

import SwiftUI

struct AnimationUpdatedExampleView: View {
    
    @State private var animate1: Bool = false
    @State private var animate2: Bool = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 40.0) {
                Button("Action 1") {
                    animate1.toggle()
                }
                
                Button("Action 2") {
                    animate2.toggle()
                }
                
                ZStack {
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .frame(maxWidth: .infinity, alignment: animate1 ? .leading : .trailing)
                        .background(.green)
                        .frame(maxHeight: .infinity, alignment: animate2 ? .top : .bottom)
                        .background(.orange)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.red)
            }
        }
        .animation(.spring(), value: animate1)
        .animation(.bouncy, value: animate2)
    }
}

#Preview {
    AnimationUpdatedExampleView()
}
