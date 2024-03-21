//
//  SoundsExampleView.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 21.03.2024.
//

import SwiftUI
import AVKit

class SoundManager {
    static let istance = SoundManager()
    
    var player: AVAudioPlayer?
    
    enum SoundOption: String {
        case street
        case car
    }
    
    func playSound(sound: SoundOption) {
        guard let url = Bundle.main.url(forResource: sound.rawValue, withExtension: ".mp3") else { return }
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
            print("Error playing sound. \(error.localizedDescription)")
        }
    }
}

struct SoundsExampleView: View {
    
    var soundManager = SoundManager()
    
    var body: some View {
        VStack(spacing: 40) {
            Button("Play Sound 1") {
                SoundManager.istance.playSound(sound: .car)
            }
            
            Button("Play Sound 2") {
               SoundManager.istance.playSound(sound: .street)
            }
        }
    }
}

#Preview {
    SoundsExampleView()
}
