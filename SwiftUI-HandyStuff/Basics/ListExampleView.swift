//
//  ListExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 2.01.2024.
//

import SwiftUI

struct ListExampleView: View {
    @State private var fruits: [String] = [
        "apple",
        "orange",
        "banana",
        "peach",
    ]

    @State private var veggies: [String] = [
        "tomato",
        "potato",
        "carrot",
        "cucumber",
    ]

    var body: some View {
        contentLayer
    }

    var contentLayer: some View {
        NavigationStack {
            List {
                // MARK: - FRUITS
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)

                } header: {
                    HStack {
                        Text("Fruits")
                        Image(systemName: "applelogo")
                    }
                    .font(.headline)
                    .foregroundStyle(.blue)
                }
                
                // MARK: - VEGGIES
                Section {
                    ForEach(veggies, id: \.self) { veggie in
                        Text(veggie.capitalized)
                            .font(.caption)
                            .foregroundStyle(.white)
                            //.frame(maxWidth: .infinity, maxHeight: .infinity)
                            //.background(.pink)
                            .padding(.vertical)
                            .listRowBackground(Color.blue)
                    }

                } header: {
                    Text("Veggies")
                }
            }
            //.listStyle(GroupedListStyle())
            .navigationTitle("Grocery List")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }

                ToolbarItem(placement: .topBarTrailing) {
                    addButton
                }
            }
        }
        .tint(.red)
    }

    var addButton: some View {
        Button("Add") {
            add()
        }
    }

    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }

    func move(indexSet: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indexSet, toOffset: newOffset)
    }

    func add() {
        fruits.append("tangerine")
    }
}

#Preview {
    ListExampleView()
}
