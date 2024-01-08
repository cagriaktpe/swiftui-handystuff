//
//  ViewModelExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 8.01.2024.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}


// @Published is exactly same thing with @State. Except it is for classes.

class FruitViewModel: ObservableObject {
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruits()
    }
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Bananas", count: 10)
        let fruit2 = FruitModel(name: "Oranges", count: 15)
        let fruit3 = FruitModel(name: "Pears", count: 20)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

struct ViewModelExampleView: View {
    
//    @State private var fruitArray: [FruitModel] = []
    /* 
     @ObservedObject will reload the view when the object changes.
     But also when view is reloaded, it will be reinitialized.
     
     @StateObject is the same thing with ObservedObject but it will not be reinitialized when view is reloaded.
          
     @StateObject -> USE THIS ON CREATION / INIT
     @ObservedObject -> USE THIS FOR SUBVIEWS
     
     */
    //@ObservedObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundStyle(.red)
                            
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Fruit List")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: SecondScreenView(fruitViewModel: fruitViewModel)) {
                        Image(systemName: "arrow.right")
                    }
                }
            }
        }
    }
}

struct SecondScreenView: View {
    
    @Environment(\.dismiss) var dismiss
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View {
        ZStack {
            // background
            Color
                .green
                .ignoresSafeArea()
            
            // content
            VStack {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    HStack {
                        Text("\(fruit.count)")
                            .foregroundStyle(.red)
                        
                        Text(fruit.name)
                            .font(.headline)
                            .bold()
                    }
                }
            }
        }
    }
}

#Preview {
    ViewModelExampleView()
}


