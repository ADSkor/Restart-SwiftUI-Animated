//
//  AudioPlayer.swift
//  Restart
//
//  Created by Aleksandr Skorotkin on 18.01.2023.
//  Copyright © 2023 ADSkor. All rights reserved.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

public func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Could not play the sound file.")
        }
    }
}
