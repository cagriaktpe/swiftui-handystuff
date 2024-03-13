//
//  ScrollViewReaderExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 13.03.2024.
//

import SwiftUI

struct ScrollViewReaderExampleView: View {
    @State private var textFieldText: String = ""
    @State private var scrollToIndex: Int = 0

    var body: some View {
        VStack {
            TextField("Enter a # here...", text: $textFieldText)
                .frame(height: 55)
                .border(Color.gray)
                .padding(.horizontal)
                .keyboardType(.numberPad)

            Button(action: {
                if let index = Int(textFieldText) {
                    scrollToIndex = index
                }
            }, label: {
                Text("SCROLL NOW")
            })

            ScrollView {
                ScrollViewReader { proxy in

//                    Button(action: {
//                        withAnimation(.spring) {
//                            proxy.scrollTo(30, anchor: .top)
//                        }
//                    }, label: {
//                        Text("Go to the number #30")
//                    })

                    ForEach(0 ..< 50) { index in
                        Text("This is item #\(index)")
                            .font(.headline)
                            .frame(height: 200)
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .shadow(radius: 10)
                            .padding()
                            .id(index)
                    }
                    .onChange(of: scrollToIndex) {
                        withAnimation(.spring) {
                            proxy.scrollTo(scrollToIndex, anchor: .top)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewReaderExampleView()
}
