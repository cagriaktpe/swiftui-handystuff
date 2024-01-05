//
//  StepperExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 5.01.2024.
//

import SwiftUI

struct StepperExampleView: View {
    
    @State private var stepperValue: Int = 1
    @State private var widthIncrement: CGFloat = 0
    
    var body: some View {
        VStack {
            Text("Stepper value is: \(stepperValue)")
                .font(.headline)
                .padding()
            
            Stepper("Stepper", value: $stepperValue, in: 1...10, step: 1)
                .padding()
            
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 100 + widthIncrement, height: 100)
                .padding()
            
            Stepper("Stepper 2") {
                incrementWidth(width: 10)
            } onDecrement: {
                incrementWidth(width: -10)
            }
            .padding()
        }
    }
    
    func incrementWidth(width: CGFloat) {
        withAnimation {
            widthIncrement += width
        }
    }
}

#Preview {
    StepperExampleView()
}
