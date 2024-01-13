//
//  FocusStateExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 13.01.2024.
//

import SwiftUI

struct FocusStateExampleView: View {
    
    enum OnboardingField: Hashable {
        case username
        case password
    }
    
//    @FocusState private var usernameInFocus: Bool
    @State private var username: String = ""
    
//    @FocusState private var passwordInFocus: Bool
    @State private var password: String = ""
    @FocusState private var fieldInFocus: OnboardingField?
    
    var body: some View {
        VStack {
            TextField("Enter your name", text: $username)
//                .focused($usernameInFocus)
                .focused($fieldInFocus, equals: .username)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            SecureField("Enter your password", text: $password)
//                .focused($passwordInFoc us)
                .focused($fieldInFocus, equals: .password)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
//            Button("Toggle focus state") {
//                usernameInFocus.toggle()
//            }
            
            Button("SIGN UP 🚀") {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                
                if usernameIsValid && passwordIsValid {
                    print("SIGN UP")
                } else if usernameIsValid {
//                    usernameInFocus = false
//                    passwordInFocus = true
                    fieldInFocus = .password
                } else {
//                    usernameInFocus = true
//                    passwordInFocus = false
                    fieldInFocus = .username
                }
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
//        .onAppear {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//                usernameInFocus = true
//            }
//        }
    }
}

#Preview {
    FocusStateExampleView()
}
