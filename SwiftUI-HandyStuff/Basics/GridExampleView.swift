//
//  GridExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 28.12.2023.
//

import SwiftUI

struct GridExampleView: View {
    
//    let columns = [
//        GridItem(.fixed(50)),
//    ]
    
//    let columns = [
//        GridItem(.flexible()),
//        GridItem(.flexible()),
//        GridItem(.flexible()),
//        GridItem(.flexible()),
//        GridItem(.flexible()),
//    ]
    
//    let columns = [
//        GridItem(.adaptive(minimum: 50, maximum: 300)),
//        GridItem(.adaptive(minimum: 150, maximum: 300)),
//    ]
    
    let columns = [
        GridItem(.flexible(), spacing: 6),
        GridItem(.flexible(), spacing: 6),
        GridItem(.flexible(), spacing: 6),
    ]
    
    var body: some View {
//        ScrollView {
//            
//            Rectangle()
//                .foregroundStyle(.white)
//                .frame(height: 400)
//            
//            LazyVGrid(columns: columns) {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .foregroundColor(.blue)
//                        .frame(height: 150)
//                }
//            }
//        }
//        .scrollIndicators(.hidden)
        
        ScrollView {
            
            Rectangle()
                .fill(Color.orange)
                .frame(height: 400)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders],
                content: {
                    Section(header:
                            Text("Section 1")
                                .font(.title)
                                .foregroundColor(.primary)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding()
                                .background(Color.white)
                                .shadow(radius: 10)
                                .padding(.vertical)
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .foregroundColor(.blue)
                                .frame(height: 150)
                        }
                    }
                    
                    Section(header:
                            Text("Section 2")
                                .font(.title)
                                .foregroundColor(.primary)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding()
                                .background(Color.white)
                                .shadow(radius: 10)
                                .padding(.vertical)
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .foregroundColor(.red)
                                .frame(height: 150)
                        }
                    }
            })
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    GridExampleView()
}
