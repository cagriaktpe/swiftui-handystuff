//
//  IfLetGuardExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 6.01.2024.
//

import SwiftUI

struct IfLetGuardExampleView: View {
    @State private var displayText: String? = nil
    @State private var isLoading: Bool = false
    @State private var currentUserID: String? = "testuser123"

    var body: some View {
        NavigationStack {
            VStack {
                Text("Here we are practicing safe coding")
                    .font(.headline)

                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                
                // DO NOT USE FORCE UNWRAP
//                Text(displayText!)
//                    .font(.title)
                
                Text(displayText ?? "There is no data!")
                    .font(.title)

                if isLoading {
                    ProgressView()
                }

                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                //loadData() // using if let
                loadData2() // using guard let
            }
        }
    }

    func loadData() {
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                displayText = "This is the new data! for user: \(userID)"
                isLoading = false
            }
        } else {
            displayText = "There is no userID!"
        }
    }
    
    func loadData2() {
        guard let userID = currentUserID else {
            displayText = "There is no userID!"
            return
        }
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            displayText = "This is the new data! for user: \(userID)"
            isLoading = false
        }
    }
}

#Preview {
    IfLetGuardExampleView()
}
