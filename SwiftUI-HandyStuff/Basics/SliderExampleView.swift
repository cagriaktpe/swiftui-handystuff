//
//  SliderExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 5.01.2024.
//

import SwiftUI

struct SliderExampleView: View {
    @State private var sliderValue: Double = 10
    @State private var color: Color = .red

    var body: some View {
        VStack {
//            Text("Slider value is: \(sliderValue)")
//                .font(.headline)
//                .padding()

            Text(
                String(format: "%.0f", sliderValue)
            )
            .foregroundStyle(color)
            .font(.headline)
            .padding()

            Slider(value: $sliderValue, in: 1 ... 100, step: 5)
                .tint(.red)
                .padding()

            RoundedRectangle(cornerRadius: 10)
                .frame(width: CGFloat(sliderValue), height: 100)
                .padding()

            Slider(value: $sliderValue, in: 1 ... 100, step: 1) {
                Text("Slider")
            } minimumValueLabel: {
                Text("1")
            } maximumValueLabel: {
                Text("100")
            }
            .padding()
            
            Slider(value: $sliderValue, in: 1 ... 100, step: 1) {
                Text("Slider")
            } minimumValueLabel: {
                Image(systemName: "sun.min.fill")
                    .font(.headline)
                
            } maximumValueLabel: {
                Image(systemName: "sun.max.fill")
                    .font(.headline)
            } onEditingChanged: { _ in
                color = .green
            }
            .padding()
        }
    }
}

#Preview {
    SliderExampleView()
}
