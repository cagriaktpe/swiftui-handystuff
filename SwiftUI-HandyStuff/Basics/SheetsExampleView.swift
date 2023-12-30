//
//  SheetsExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 30.12.2023.
//

import SwiftUI

struct SheetsExampleView: View {
    
    /* 
     keep it one sheet for a view
     do not a conditional statement to a sheet
     
     */
    
    @State private var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            // background
            Color.green
                .ignoresSafeArea()
            
            // content
            contentLayer
        }
    }

    var contentLayer: some View {
        VStack {
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundStyle(.green)
                    .font(.headline)
                    .padding(20)
                    .background(
                        Color
                            .white
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    )
            }
        }
        .fullScreenCover(isPresented: $showSheet, content: {
            SecondScreen()
        })
//        .sheet(isPresented: $showSheet, content: {
//            SecondScreen()
//        })
    }
}

struct SecondScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            // background
            Color.red
                .ignoresSafeArea()
            
            // content
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            Button {
                dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding(20)
            }
        }
    }
}

#Preview {
    SheetsExampleView()
}

#Preview("SecondScreen") {
    SecondScreen()
}
