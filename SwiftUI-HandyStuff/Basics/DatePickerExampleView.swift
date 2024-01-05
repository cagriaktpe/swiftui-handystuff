//
//  DatePickerExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 5.01.2024.
//

import SwiftUI

struct DatePickerExampleView: View {
    @State private var date: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2020)) ?? Date()
    let endingDate: Date = Calendar.current.date(from: DateComponents(year: 2025)) ?? Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .short
        return formatter
    }

    var body: some View {
        VStack {
            Text("Selected date is: ")
            Text(dateFormatter.string(from: date))
                .font(.headline)
                .padding()
            
            DatePicker("Select a date", selection: $date, in: startingDate...endingDate, displayedComponents: [.date])
                .datePickerStyle(
    //                .graphical
    //                .wheel
                    .compact
                )
                .tint(.red)
            .padding()
        }
    }
}

#Preview {
    DatePickerExampleView()
}
