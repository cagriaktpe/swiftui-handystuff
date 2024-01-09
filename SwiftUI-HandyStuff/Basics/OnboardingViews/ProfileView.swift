//
//  ProfileView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 9.01.2024.
//

import SwiftUI

struct ProfileView: View {
    
    // app storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "person.circle.fill")
                .font(.system(size: 150))
            
            Text(currentUserName ?? "Your name here")
            
            Text("This user is \(currentUserAge ?? 0) years old")
            
            Text("Their gender is \(currentUserGender ?? "unknown")")
            
            Text("SIGN OUT")
                .foregroundStyle(.white)
                .font(.headline)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(
                    .black
                )
                .clipShape(RoundedRectangle(cornerRadius: 10.0))
                .onTapGesture {
                    signOut()
                }
        }
        .font(.title)
        .foregroundStyle(.blue)
        .padding()
        .padding(.vertical, 40)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 10.0))
        .shadow(radius: 10)
    }
    
    func signOut() {
        currentUserName = nil
        currentUserAge = nil
        currentUserGender = nil
        
        withAnimation(.spring()) {
            currentUserSignedIn = false
        }
    }
}

#Preview {
    ProfileView()
}
