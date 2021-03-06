//
//  ContentView.swift
//  AudioRecorder
//
//  Created by Ivan Trajanovski on 2022. 02. 03..
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var audioRecorder: AudioRecorder
    
    var body: some View {
        NavigationView {
            VStack {
                RecordingsList(audioRecorder: audioRecorder)
                Spacer()
                HStack(spacing: 16) {
                    Button(action: {self.audioRecorder.stopRecording()}) {
                        Image(systemName: "stop.circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 60, height: 60)
                            .foregroundColor(.red)
                            .padding(10)
                    }
                    Button(action: {self.audioRecorder.startRecording()}) {
                        Image(systemName: "waveform.circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 80, height: 80)
                            .foregroundColor(.red)
                            .padding(10)
                    }
                    Button(action: {print("Pause")}) {
                        Image(systemName: "pause.circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 60, height: 60)
                            .foregroundColor(.red)
                            .padding(10)
                    }
                }
                .navigationBarTitle("Voice Recorder")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(audioRecorder: AudioRecorder())
            .preferredColorScheme(.dark)
    }
}
