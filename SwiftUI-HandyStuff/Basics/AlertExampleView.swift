//
//  AlertExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 3.01.2024.
//

import SwiftUI

struct AlertExampleView: View {
    @State private var showAlert: Bool = false
    @State private var alertTitle: String = ""
    @State private var alertMessage: String = ""
    @State private var backgroundColor: Color = Color.yellow
    
    enum MyAlerts {
        case error
        case success
    }

    var body: some View {
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea()

            // content

            VStack {
                Button {
                    alertTitle = "Error uploading video ☹️"
                    alertMessage = "The video could not be uploaded"
                    showAlert.toggle()
                } label: {
                    Text("BUTTON 1")
                }
                .padding()
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Button {
                    alertTitle = "Successfully uploaded video 🥳"
                    alertMessage = "Your video is now public!"
                    showAlert.toggle()
                } label: {
                    Text("BUTTON 2")
                }
                .padding()
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            .alert(Text(alertTitle), isPresented: $showAlert) {
//                Button(role: .cancel) {
//                } label: {
//                    Text("OK")
//                }
//                Button(role: .destructive) {
//                    backgroundColor = .red
//                } label: {
//                    Text("Delete")
//                }
            } message: {
                Text(alertMessage)
            }
        }
    }
}

#Preview {
    AlertExampleView()
}
