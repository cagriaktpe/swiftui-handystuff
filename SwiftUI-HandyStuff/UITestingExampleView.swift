//
//  UITestingExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 12.12.2023.
//

import SwiftUI

class UITestingExampleViewModel: ObservableObject {
    let placeholderText: String = "Enter your name"
    @Published var textFieldText: String = ""
    @Published var currentUserIsSignedIn: Bool = false

    func signUpButtonTapped() {
        guard textFieldText.isEmpty == false else { return }
        currentUserIsSignedIn = true
    }
}

struct UITestingExampleView: View {
    @StateObject private var viewModel = UITestingExampleViewModel()

    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.blue, .black]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            ZStack {
                if viewModel.currentUserIsSignedIn {
                    SignInHomeView()
                } else {
                    signUpLayer
                        .transition(.move(edge: .leading))
                }
            }
        }
    }
}

#Preview {
    UITestingExampleView()
}

extension UITestingExampleView {
    private var signUpLayer: some View {
        VStack {
            TextField(viewModel.placeholderText, text: $viewModel.textFieldText)
                .padding()
                .background(Color.secondary)
                .foregroundStyle(.primary)
                .cornerRadius(10)
                .accessibilityIdentifier("NameTextField")

            Button {
                withAnimation(.spring()) {
                    viewModel.signUpButtonTapped()
                }
            } label: {
                Text("Sign Up")
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .accessibilityIdentifier("SignUpButton")
        }
        .padding()
    }
}

struct SignInHomeView: View {

    @State private var showAlert: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                
                Button {
                    showAlert.toggle()
                } label: {
                    Text("Show welcome alert!")
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.red)
                        .cornerRadius(10)
                        
                }
                .alert(isPresented: $showAlert) {
                    Alert(
                        title: Text("Welcome!"),
                        message: Text("You are signed in!"),
                        dismissButton: .default(Text("OK"))
                    )
                }
                .accessibilityIdentifier("ShowAlertButton")
                
                NavigationLink(destination: Text("Destination")) {
                    Text("Go to destination")
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
            .padding()
            .navigationTitle("Welcome")
        }
    }
}
