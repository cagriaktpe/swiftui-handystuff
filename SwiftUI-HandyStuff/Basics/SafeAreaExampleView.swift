//
//  SafeAreaExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 28.12.2023.
//

import SwiftUI

/* apple has made some changes so background will be ignores safe area wihout specifying .ignoresSafeArea()
 so only items will be effected by safe area. We don't need to use ZStack and specify Color.blue
 */

struct SafeAreaExampleView: View {
    var body: some View {
//        ZStack {
//            // background
//            Color.blue
//                .ignoresSafeArea()
//
//            // foreground
//            VStack {
//                Text("Hello, World!")
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            //.background(Color.red)
//        }

        ScrollView {
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10) { _ in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
            }
        }
        .background(.blue)
    }
}

#Preview {
    SafeAreaExampleView()
}
