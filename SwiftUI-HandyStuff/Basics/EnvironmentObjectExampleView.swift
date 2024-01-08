//
//  EnvironmentObjectExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 8.01.2024.
//

import SwiftUI

/*
 EnvironmentObject is a way to share data between views. It is like a global variable.
 We don't need to pass it to subviews. We can access it from anywhere.
 */

class EnvironmentViewModel: ObservableObject {
    
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        dataArray.append(contentsOf: ["iPhone", "iPad", "iMac", "Apple Watch"])
    }
}

struct EnvironmentObjectExampleView: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.dataArray, id: \.self) { data in
                    NavigationLink(destination: DetailView(selectedItem: data)) {
                        Text(data)
                    }
                }
            }
            .navigationTitle("iOS Devices")
        }
        .environmentObject(viewModel)
    }
}

struct DetailView: View {
    
    let selectedItem: String
    // without using EnvironmentObject first approach is @ObservedObject
//    @ObservedObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            // background
            Color
                .orange
                .ignoresSafeArea()
            
            // content
            NavigationLink(destination: FinalView()) {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundStyle(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
            }
        }
    }
}

struct FinalView: View {
    
    // first aproach contiunes here
//    @ObservedObject var viewModel: EnvironmentViewModel
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            // background
            LinearGradient(colors: [Color("CoolColorBlue1"), Color("CoolColorBlue2")], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            // content
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.dataArray, id: \.self) { data in
                        Text(data)
                    }
                }
                .foregroundStyle(.white)
                .font(.largeTitle)
            }
        }
    }
}

#Preview {
    EnvironmentObjectExampleView()
}
