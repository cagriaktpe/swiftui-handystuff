//
//  MultipleSheetsExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 12.03.2024.
//

import SwiftUI

struct RandomModel: Identifiable {
    var id = UUID().uuidString
    var title: String
}

// 1 - use a binding
// 2 - use multiple .sheets
// 3 - use $item

struct MultipleSheetsExampleView: View {
    
    @State private var selectedModel: RandomModel?
//    @State private var showSheet: Bool = false
//    @State private var showSheet2: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Button("Button 1") {
                //selectedModel = RandomModel(title: "one".uppercased())
                //showSheet.toggle()
                selectedModel = RandomModel(title: "one".uppercased())
            }
//            .sheet(isPresented: $showSheet) {
//                NextScreen(selectedModel: RandomModel(title: "one".uppercased()))
//            }
            
            Button("Button 2") {
                //selectedModel = RandomModel(title: "two".uppercased())
                //showSheet2.toggle()
                selectedModel = RandomModel(title: "two".uppercased())
            }
//            .sheet(isPresented: $showSheet2) {
//                NextScreen(selectedModel: RandomModel(title: "two".uppercased()))
//            }
        }
        // SOLUTION 1
//        .sheet(isPresented: $showSheet) {
//            NextScreen(selectedModel: $selectedModel)
//        }
//        .sheet(isPresented: $showSheet) {
//            NextScreen(selectedModel: selectedModel)
//        }
        // SOLUTION 3
        .sheet(item: $selectedModel) { model in
            NextScreen(selectedModel: model)
        }
    }
}

// SOLUTION 1
//struct NextScreen: View {
//    
//    @Binding var selectedModel: RandomModel
//    
//    var body: some View {
//        Text(selectedModel.title)
//            .font(.largeTitle)
//    }
//}
struct NextScreen: View {

    let selectedModel: RandomModel

    var body: some View {
        Text(selectedModel.title)
            .font(.largeTitle)
    }
}

#Preview {
    MultipleSheetsExampleView()
}
