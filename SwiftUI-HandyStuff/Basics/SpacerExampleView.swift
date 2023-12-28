//
//  SpacerExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 28.12.2023.
//

import SwiftUI

struct SpacerExampleView: View {
    var body: some View {
//        HStack(spacing: 0) {
//            Spacer(minLength: 0)
//                .frame(height: 10)
//                .background(Color.blue)
//
//            Rectangle()
//                .frame(width: 50, height: 50)
//
//            Spacer()
//                .frame(height: 10)
//                .background(Color.blue)
//
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 50, height: 50)
//
//            Spacer()
//                .frame(height: 10)
//                .background(Color.blue)
//
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 50, height: 50)
//
//            Spacer(minLength: 0)
//                .frame(height: 10)
//                .background(Color.blue)
//        }
//        .background(Color.yellow)
//        .padding(.horizontal, 200)
//        .background(Color.purple)

        VStack {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                
                Spacer()
                    .frame(height: 10)
                    .background(Color.blue)
                
                Image(systemName: "gear")
            }
            .font(.title)
            .background(Color.yellow)
            .padding(.horizontal)
            .background(Color.purple)
            
            Spacer()
                .frame(width: 10)
                .background(Color.blue)
            
            Rectangle()
                .fill(Color.red)
                .frame(height: 55)
        }
        //.background(Color.green)
    }
}

#Preview {
    SpacerExampleView()
}
