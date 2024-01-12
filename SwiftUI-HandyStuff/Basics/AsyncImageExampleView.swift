//
//  AsyncImageExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 12.01.2024.
//

import SwiftUI

/*
 case empty -> No image is loaded.
 case success(Image) -> an image succesfully loaded.
 case failure(Error) -> An image failed to load with an error.
 */

struct AsyncImageExampleView: View {
    let url = URL(string: "https://picsum.photos/400/300")

    var body: some View {
        VStack {
//            AsyncImage(url: url) { image in
//                image
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 350, height: 250)
//                    .clipShape(RoundedRectangle(cornerRadius: 20.0))
//            } placeholder: {
//                ProgressView()
//            }
//            .shadow(radius: 10)

            AsyncImage(url: url) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                case let .success(image):
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 350, height: 250)
                        .clipShape(RoundedRectangle(cornerRadius: 20.0))
                case .failure:
                    Image(systemName: "questionmark")
                        .font(.headline)
                @unknown default:
                    Image(systemName: "questionmark")
                        .font(.headline)
                }
            }
        }
    }
}

#Preview {
    AsyncImageExampleView()
}
