//
//  ConfirmationDialogExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 3.01.2024.
//

import SwiftUI

struct ConfirmationDialogExampleView: View {
    @State private var backgroundColor: Color = Color.yellow
    @State private var showActionSheet: Bool = false

    var body: some View {
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea()
            
            // content
//            Button {
//                showActionSheet.toggle()
//            } label: {
//                Text("Click me")
//            }
//            .confirmationDialog("This is the title", isPresented: $showActionSheet, titleVisibility: .visible) {
//                Button("Red") { backgroundColor = .red }
//                Button("Green") { backgroundColor = .green }
//                Button("Yellow") { backgroundColor = .yellow }
//                Button("Remove color", role: .destructive) { backgroundColor = .clear }
//                Button("Cancel", role: .cancel) { }
//            } message: {
//                Text("This is the message")
//            }
            
            VStack {
                HStack {
                    
                    Circle()
                        .frame(width: 30, height: 30)
                    
                    Text("@username")
                    
                    Spacer()
                    
                    Button(action: {
                        showActionSheet.toggle()
                    }, label: {
                        Image(systemName: "ellipsis")
                    })
                    .tint(.primary)
                    
                }
                .padding(.horizontal)
                
                Rectangle()
                    .aspectRatio(1, contentMode: .fit)
            }
            .confirmationDialog("This is the title", isPresented: $showActionSheet, titleVisibility: .hidden) {
                Button("Share") { }
                Button("Report", role: .destructive) { }
                Button("Delete", role: .destructive) { }
            } message: {
                Text("What would you like to do?")
            }
        }
    }
}

#Preview {
    ConfirmationDialogExampleView()
}
