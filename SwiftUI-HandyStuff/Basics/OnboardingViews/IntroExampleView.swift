//
//  IntroExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 9.01.2024.
//

import SwiftUI

struct IntroExampleView: View {
    
    // false is a starting value, if no value is set before it will use the 'false'
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            // MARK: - Background
            RadialGradient(
                gradient: Gradient(colors: [Color("CoolColorBlue1"), Color("CoolColorBlue2")]),
                center: .topLeading,
                startRadius: 5,
                endRadius: UIScreen.main.bounds.height)
                .ignoresSafeArea()
            
            // MARK: - Content
            if currentUserSignedIn {
                ProfileView()
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
            } else {
                OnboardingView()
                    .transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .bottom)))
            }
        }
        .animation(.spring(), value: currentUserSignedIn)
    }
}

#Preview {
    IntroExampleView()
}
