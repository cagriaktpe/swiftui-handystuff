//
//  BackgroundAndOverlayExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 27.12.2023.
//

import SwiftUI

struct BackgroundAndOverlayExampleView: View {
    var body: some View {
        /*
         Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
             .background(
                 //Color.red
                 //LinearGradient(colors: [.red, .blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                 Circle()
                     .fill(
                         LinearGradient(colors: [.red, .blue], startPoint: .leading, endPoint: .trailing)
                     )
                     .frame(width: 100, height: 100)
             )
             .background(
                 Circle()
                     .fill(
                         LinearGradient(colors: [.blue, .red], startPoint: .leading, endPoint: .trailing)
                     )
                     .frame(width: 120, height: 120)
             )
          */

        /*
         Circle()
             .fill(.pink)
             .frame(width: 100, height: 100)
             .overlay(
                 Text("1")
                     .font(.largeTitle)
                     .foregroundStyle(.white)
             )
             .background(
                 Circle()
                     .fill(.purple)
                     .frame(width: 110, height: 110)
             )
          */

        /*
         Rectangle()
             .frame(width: 100, height: 100)
             .overlay(
                 Rectangle()
                     .fill(.blue)
                     .frame(width: 50, height: 50),
                 alignment: .topTrailing
             )
             .background(
                 Rectangle()
                     .fill(.red)
                     .frame(width: 150, height: 150),
                 alignment: .bottomLeading
             )
          */

        Image(systemName: "globe")
            .font(.system(size: 40))
            .foregroundStyle(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(colors: [Color("CoolBlue"), Color("CoolBlue2")], startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: Color("CoolBlue2").opacity(0.5), radius: 10, x: 0, y: 10)
                    .overlay(
                        Circle()
                            .fill(.blue)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("1")
                                    .font(.headline)
                                    .foregroundStyle(.white)
                            )
                            .shadow(color: Color("CoolBlue2").opacity(0.5), radius: 10, x: 5, y: 5),
                        alignment: .bottomTrailing
                    )
            )
    }
}

#Preview {
    BackgroundAndOverlayExampleView()
}
