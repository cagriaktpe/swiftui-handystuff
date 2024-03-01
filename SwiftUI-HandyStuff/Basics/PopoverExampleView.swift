//
//  PopoverExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 30.12.2023.
//

import SwiftUI

struct PopoverExampleView: View {
    
    @State private var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            // background
            Color.orange
                .ignoresSafeArea()
            
            // content
            contentLayer
        }
    }
    
    var contentLayer: some View {
        ZStack {
            VStack {
                Button("Button") {
                    withAnimation(.spring) {
                        showNewScreen.toggle()
                    }
                }
                .font(.largeTitle)
                
                Spacer()

            }
            
            // MARK: METHOD 2 - TRANSITION
//            if showNewScreen {
//                NewScreen(showNewScreen: $showNewScreen)
//                    .padding(.top, 100)
//                    .transition(.move(edge: .bottom))
//            }
            
             //MARK: METHOD 3 - ANIMATION OFFSET
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring(), value: showNewScreen)
        }
        // MARK: METHOD 1 - SHEET
//        .sheet(isPresented: $showNewScreen) {
//            NewScreen()
//        }
        
        
        
    }
}

struct NewScreen: View {
    
    @Environment(\.dismiss) var dismiss
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            // background
            Color.purple
                .ignoresSafeArea()
            
            // content
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            Button {
                //dismiss()
                withAnimation(.spring) {
                    showNewScreen.toggle()
                }
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding(20)
            }

        }
    }
}

#Preview("Popever Screen") {
    PopoverExampleView()
}
