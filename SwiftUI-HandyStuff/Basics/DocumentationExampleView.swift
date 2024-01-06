//
//  DocumentationExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 6.01.2024.
//

import SwiftUI

struct DocumentationExampleView: View {
    // MARK: - PROPERTIES

    @State private var data: [String] = [
        "Apples", "Oranges", "Bananas",
    ]
    @State private var showAlert: Bool = false

    // MARK: - BODY

    // AKTEPE - Working copy - things to do:
    /*
     1) Fix title
     2) Add toolbar item
     3) Add alert
     */
    var body: some View {
        NavigationStack { // START: NAV
            ZStack {
                // background
                Color.red
                    .ignoresSafeArea()

                // foreground
                foregroundLayer
                .navigationTitle("Documentation")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            showAlert.toggle()
                        }, label: {
                            Text("ALERT")
                        })
                    }
                }
                .alert("Alert title", isPresented: $showAlert) {
                } message: {
                    Text("Alert message")
                }
            }
        } // END: NAV
    }
    
    /// This is the foreground layer that holds a ScrollView
    private var foregroundLayer: some View {
        ScrollView { // START: SCROLLV
            Text("Hello, World!")
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        } // END: SCROLLV
    }

    // MARK: - FUNCTIONS
    
    /// Greets the user with a name
    ///
    /// This function greets the user with a name. It returns a string that says "Hello, {name}"
    /// ```
    /// greet(name: "Aktepe") -> "Hello, Aktepe"
    /// ```
    ///
    /// - Warning: This is a warning message
    /// - Parameter name: This is the name of the user
    /// - Returns: This is the greeting message
    func greet(name: String) -> String {
        return "Hello, \(name)"
    }
}

// MARK: - PREVIEW

#Preview {
    DocumentationExampleView()
}
