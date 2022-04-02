//
//  AudioPlayer.swift
//  AudioRecorder
//
//  Created by Ivan Trajanovski on 2022. 04. 02..
//

import Foundation
import SwiftUI
import Combine
import AVFoundation

class AudioPlayer: ObservableObject {
    let objectWillChange = PassthroughSubject<AudioPlayer, Never>()
    
    var isPlaying = false {
        didSet {
            objectWillChange.send(self)
        }
    }
    
    var audioPlayer: AVAudioPlayer!
    
    func startPlayback(audio: URL) {
        let playbackSession = AVAudioSession.sharedInstance()
        
        do {
            try playbackSession.overrideOutputAudioPort(AVAudioSession.PortOverride.speaker)
        } catch {
            print("Playing over the device's speakers failed")
        }
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: audio)
            audioPlayer.play()
            isPlaying = true
        } catch {
            print("Playback failed.")
        }
        
        
    }
    
    func stopPlayback() {
        audioPlayer.stop()
        isPlaying = false
    }
}
