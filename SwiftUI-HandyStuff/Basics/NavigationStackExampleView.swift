//
//  NavigationStackExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 15.01.2024.
//

import SwiftUI

// NavigationLink using destination is not lazy, so it will create destination views as loaded
// NavigationLink using value is lazy, so it will create destination views when clicked

struct NavigationStackExampleView: View {
    
    let fruits = ["Apple", "Banana", "Orange"]
    
    @State private var stackPath: [String] = []
    
    var body: some View {
        NavigationStack(path: $stackPath) {
            ScrollView {
                VStack(spacing: 40) {
                    
                    Button("Super segue!") {
                        stackPath.append(contentsOf: ["Apple", "Banana", "Orange"])
                    }
                    
                    ForEach(fruits, id: \.self) { fruit in
                        NavigationLink(value: fruit) {
                            Text(fruit)
                        }
                    }
                    
                    ForEach(0..<10) { x in
                        NavigationLink(value: x) {
                            Text("Hello, \(x)!")
                        }
                    }
                }
            }
            .navigationTitle("Title")
            .navigationDestination(for: Int.self) { value in
                SecondView(value: value)
            }
            .navigationDestination(for: String.self) { value in
                Text(value)
            }
        }
    }
}

struct SecondView: View {
    
    let value: Int
    
    init(value: Int) {
        self.value = value
        print("INIT SCREEN: \(value)")
    }
    
    var body: some View {
        Text("Hello, \(value)!")
    }
}

#Preview {
    NavigationStackExampleView()
}
