//
//  ModelExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 8.01.2024.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct ModelExampleView: View {
    
    @State private var users: [UserModel] = [
        UserModel(displayName: "Çağrı Aktepe", userName: "aktepe", followerCount: 100, isVerified: true),
        UserModel(displayName: "Güneş Aktepe", userName: "gunes", followerCount: 200, isVerified: false),
        UserModel(displayName: "Furkan Aktepe", userName: "furkan0", followerCount: 300, isVerified: true),
        UserModel(displayName: "Alp Aktepe", userName: "alp", followerCount: 400, isVerified: false),
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15) {
                        Circle()
                            .frame(width: 35, height: 35)
                        
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            
                            Text("@\(user.userName)")
                                .foregroundStyle(.gray)
                                .font(.caption)
                        }
                        
                        Spacer()
                        
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundStyle(.blue)
                        }
                        
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            
                            Text("Followers")
                                .foregroundStyle(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 5)
                }
            }
            .navigationTitle("Users")
        }
    }
}

#Preview {
    ModelExampleView()
}
