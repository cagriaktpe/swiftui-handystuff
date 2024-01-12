//
//  BackgroundMaterialsExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 12.01.2024.
//

import SwiftUI

struct BackgroundMaterialsExampleView: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4.0)
                    .frame(width: 50, height: 4)
                    .padding()
                
                Spacer()
                    
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 30.0))
        }
        .ignoresSafeArea()
        .background(
            Image("Koln")
        )
    }
}

#Preview {
    BackgroundMaterialsExampleView()
}
