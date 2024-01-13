//
//  ListSwipeActionsExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 13.01.2024.
//

import SwiftUI

struct ListSwipeActionsExampleView: View {
    
    @State private var fruits: [String] = [
        "apple", "orange", "banana", "peach",
    ]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
            }
//            .onDelete(perform: delete)
            .swipeActions(edge: .leading, allowsFullSwipe: false) {
                Button("Share") {}
                    .tint(.yellow)
            }
            .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                Button("Archieve") {}
                    .tint(.green)
                
                Button("Save") {}
                    .tint(.blue)
                
                Button("Junk") {}
                    .tint(.black)
            }
        }
    }
    
    func delete(indexSet: IndexSet) {
    }
}

#Preview {
    ListSwipeActionsExampleView()
}
