//
//  InitializerExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 28.12.2023.
//

import SwiftUI

struct InitializerExampleView: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.backgroundColor = .red
            self.title = "Apples"
        } else if fruit == .orange {
            self.backgroundColor = .orange
            self.title = "Oranges"
        } else if fruit == .banana {
            self.backgroundColor = .yellow
            self.title = "Bananas"
        } else {
            self.backgroundColor = .clear
            self.title = "Unknown"
        }
    }
    
    enum Fruit {
        case apple
        case orange
        case banana
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundStyle(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
    }
}

#Preview {
    HStack {
        InitializerExampleView(count: 7, fruit: .orange)
        InitializerExampleView(count: 3, fruit: .banana)
    }
}
