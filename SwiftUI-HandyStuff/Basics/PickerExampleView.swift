//
//  PickerExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 5.01.2024.
//

import SwiftUI

struct PickerExampleView: View {
    @State private var selection: String = "Most Recent"
    let filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]
    
    init() {
        /* 
         These will affects the whole project, not just PickerExampleView.
         All comes from UIKit.
         */
        UISegmentedControl.appearance().selectedSegmentTintColor = .blue
        
        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white,
        ]
        
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }

    var body: some View {
//        VStack {
//            HStack {
//                Text("Age:")
//                Text(selection)
//            }
//
//            Picker(selection: $selection, label: Text("Picker")) {
//                ForEach(18..<100) { num in
//                    Text("\(num)")
//                        .font(.headline)
//                        .foregroundStyle(.red)
//                        .tag("\(num)")
//                }
//            }
//            .pickerStyle(.wheel)
//            .background(Color.gray.opacity(0.3))
//        }
        
//        VStack {
//            Picker(selection: $selection, label: Text("Picker")) {
//                ForEach(filterOptions, id: \.self) { option in
//                    Text(option)
//                        .font(.headline)
//                        .foregroundStyle(.red)
//                        .tag(option)
//                }
//            }
//            .pickerStyle(.menu)
//        }
        
        VStack {
            Picker(selection: $selection, label: Text("Picker")) {
                ForEach(filterOptions, id: \.self) { option in
                    Text(option)
                        .tag(option)
                }
            }
            .pickerStyle(.segmented)
//            .background(.blue)
        }
    }
}

#Preview {
    PickerExampleView()
}
