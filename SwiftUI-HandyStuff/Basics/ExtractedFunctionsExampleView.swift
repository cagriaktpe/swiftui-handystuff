//
//  ExtractedFunctionsExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 29.12.2023.
//

import SwiftUI

struct ExtractedFunctionsExampleView: View {
    @State var backgroundColor: Color = Color.yellow

    var body: some View {
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea()

            // content
            contentLayer
        }
    }

    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)

            Button(action: {
                buttonPressed()
            }, label: {
                Text("PRESS ME")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .padding()
                    .background(Color.black)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            })
        }
    }

    func buttonPressed() {
        backgroundColor = Color.blue
    }
}

#Preview {
    ExtractedFunctionsExampleView()
}
