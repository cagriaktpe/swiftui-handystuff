//
//  GeometryReaderView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 9.12.2023.
//

import SwiftUI

struct GeometryReaderView: View {
    var body: some View {
        GeometryReader { geometry in
            HStack(spacing: 0) {
                Rectangle()
                    .fill(.red)
                    .frame(width: geometry.size.width * 0.666)
                Rectangle()
                    .fill(.green)
            }
            .ignoresSafeArea()
        }
        
    }
}

#Preview {
    GeometryReaderView()
}
