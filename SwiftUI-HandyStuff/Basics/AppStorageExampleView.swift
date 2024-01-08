//
//  AppStorageExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 8.01.2024.
//

import SwiftUI

/* UserDefaults approach */
//struct AppStorageExampleView: View {
//    
//    @State private var currentUserName: String?
//    
//    var body: some View {
//        VStack(spacing: 20) {
//            Text(currentUserName ?? "Add Name Here")
//            
//            if let name = currentUserName {
//                Text(name)
//            }
//            
//            Button("Save".uppercased()) {
//                let name: String = "Çağrı"
//                currentUserName = name
//                UserDefaults.standard.set(name, forKey: "name")
//            }
//        }
//        .onAppear {
//            if let name = UserDefaults.standard.string(forKey: "name") {
//                currentUserName = name
//            }
//        }
//    }
//}

/* @AppStorage approach */
struct AppStorageExampleView: View {
    
    @AppStorage("name") var currentUserName: String? // usable for entire app
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add Name Here")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button("Save".uppercased()) {
                let name: String = "Furkan"
                currentUserName = name
            }
        }
    }
}

#Preview {
    AppStorageExampleView()
}
