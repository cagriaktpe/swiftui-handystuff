//
//  HapticsExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 22.03.2024.
//

import SwiftUI

class HapticsManager {
    static let instance = HapticsManager() // Singleton
    
    func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(type)
    }
    
    func impact(style: UIImpactFeedbackGenerator.FeedbackStyle) {
        let generator = UIImpactFeedbackGenerator(style: style)
        generator.impactOccurred()
    }
}

struct HapticsExampleView: View {
    var body: some View {
        VStack(spacing: 20) {
            Button("Success") {HapticsManager.instance.notification(type: .success)}
            Button("Warning") {HapticsManager.instance.notification(type: .warning)}
            Button("Error") {HapticsManager.instance.notification(type: .error)}
            Divider()
            Button("Light Impact") {HapticsManager.instance.impact(style: .light)}
            Button("Medium Impact") {HapticsManager.instance.impact(style: .medium)}
            Button("Heavy Impact") {HapticsManager.instance.impact(style: .heavy)}
            Button("Soft Impact") {HapticsManager.instance.impact(style: .soft)}
            Button("Rigid Impact") {HapticsManager.instance.impact(style: .rigid)}
        }
    }
}

#Preview {
    HapticsExampleView()
}
