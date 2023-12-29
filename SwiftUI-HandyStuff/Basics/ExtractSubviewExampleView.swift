//
//  ExtractSubviewExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 29.12.2023.
//

import SwiftUI

struct ExtractSubviewExampleView: View {
    
    @State var backgroundColor: Color = Color.blue
    
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
        HStack {
            myItem(title: "Apples", count: 20, color: .red)
            myItem(title: "Oranges", count: 5, color: .orange)
            myItem(title: "Bananas", count: 34, color: .yellow)
        }
    }
}

struct myItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    ExtractSubviewExampleView()
}
