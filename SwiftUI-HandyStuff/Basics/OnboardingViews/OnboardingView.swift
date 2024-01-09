//
//  OnboardingView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 9.01.2024.
//

import SwiftUI

// MARK: VIEW
struct OnboardingView: View {
    // Onboarding states:
    /*
     0 -> Welcome screen
     1 -> Add name
     2 -> Add age
     3 -> Add gender
     */
    @State private var onboardingState: Int = 0
    
    // onboarding inputs
    @State private var name: String  = ""
    @State private var age: Double = 50
    @State private var gender: String = ""
    
    // for the alert
    @State private var alertContent: String = ""
    @State private var showAlert: Bool = false
    
    // app storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false

    let transition: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading)
    )
    
    var body: some View {
        ZStack {
            // content
            ZStack {
                switch onboardingState {
                case 0:
                    welcomeSection
                        .transition(transition)
                case 1:
                    addNameSection
                        .transition(transition)
                case 2:
                    addAgeSection
                        .transition(transition)
                case 3:
                    addGenderSection
                        .transition(transition)
                default:
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundStyle(.green)
                }
            }

            // buttons
            VStack {
                Spacer()

                bottomButton
            }
            .padding(30)
        }
        .alert("Alert", isPresented: $showAlert) {
            
        } message: {
            Text(alertContent)
        }
    }
}

#Preview {
    OnboardingView()
        .background(Color.purple)
}

// MARK: COMPONENTS

extension OnboardingView {
    
    private var bottomButton: some View {
        Text(onboardingState == 0 ? "SIGN UP" : onboardingState == 3 ? "FINISH" : "NEXT")
            .font(.headline)
            .foregroundStyle(.blue)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .animation(nil, value: onboardingState)
            .onTapGesture {
                handleNextButtonPressed()
            }
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "applelogo")
                .font(.system(size: 100))
                .foregroundStyle(.white)
            
            Text("Find your match.")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .overlay(
                    Capsule()
                        .frame(height: 3)
                        .foregroundStyle(.white)
                        .offset(y: 5),
                    alignment: .bottom
                )
            
            Text("This is the best app to find your match! 😎 Of course it's not 😅 It is just an example for learning SwiftUI technique @AppStorage better.")
                .fontWeight(.medium)
                .foregroundStyle(.white)
            
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
     
    private var addNameSection: some View {
        VStack(spacing: 20) {
            Spacer()
            
            Text("What's your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            
            TextField("Your name here...", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Spacer()
            Spacer()
        }
         .padding(30)
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 20) {
            Spacer()
            
            Text("What's your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            
            Text(String(format: "%.0f", age))
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            
            Slider(value: $age, in: 18...100, step: 1)
                .tint(.white)
            
            Spacer()
            Spacer()
        }
         .padding(30)
    }
    
    private var addGenderSection: some View {
        VStack(spacing: 20) {
            Spacer()
            
            Text("What's your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            
            Picker(selection: $gender,
                   label: Text("Select a gender")
            ) {
                Text("Male").tag("Male")
                Text("Female").tag("Female")
                Text("Non-Binary").tag("Non-Binary")

            }
            .tint(.blue)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .pickerStyle(.menu)
            
            Spacer()
            Spacer()
        }
         .padding(30)
    }
}

// MARK: FUNCTIONS

extension OnboardingView {
    
    func handleNextButtonPressed() {
        // CHECK INPUTS
        switch onboardingState {
        case 1:
            guard name.count >= 3 else {
                showAlert(content: "Your name must be at least 3 characters long! 😖")
                return
            }
        case 3:
            guard gender.count > 1 else {
                showAlert(content: "Please select a gender before moving forward! 😞")
                return
            }
        default:
            break
        }
        
        // GO TO NEXT SECTION
        if onboardingState == 3 {
            signIn()
        } else {
            withAnimation(.spring()) {
                onboardingState += 1
            }
        }
    }
    
    func showAlert(content: String) {
        alertContent = content
        showAlert.toggle()
    }
    
    func signIn() {
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender
        
        withAnimation(.spring()) {
            currentUserSignedIn = true
        }
    }
}
