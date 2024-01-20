//
//  NativePopoverExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 20.01.2024.
//

import SwiftUI

struct NativePopoverExampleView: View {
    @State private var showPopover: Bool = false
    @State private var feedbackOptions: [String] = [
        "Very good 🥳",
        "Good 😊",
        "Bad 😕",
    ]

    var body: some View {
        ZStack {
            // background
            Color.gray.ignoresSafeArea()

            // foreground
            Button("Provide feedback?") {
                showPopover.toggle()
            }
            .padding()

            .background(.yellow)
            .clipShape(RoundedRectangle(cornerRadius: 10))
//            .popover(isPresented: $showPopover) {
//                Text("Hello, team!!!")
//                    .padding()
//                    .presentationCompactAdaptation(.popover)
//            }
//            .popover(isPresented: $showPopover, attachmentAnchor: .point(.topLeading)) {
//                Text("Hello, team!!!")
//                    .padding()
//                    .presentationCompactAdaptation(.popover)
//            }
            .popover(isPresented: $showPopover) {
                ScrollView {
                    VStack(alignment: .leading, spacing: 12) {
                        ForEach(feedbackOptions, id: \.self) { option in
                            Button(option) {
                            }

                            if option != feedbackOptions.last { Divider() }
                        }
                    }
                    .padding()
                    .presentationCompactAdaptation(.popover)
                }
            }
        }
    }
}

#Preview {
    NativePopoverExampleView()
}
