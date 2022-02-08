//
//  ContentView.swift
//  AudioRecorder
//
//  Created by Ivan Trajanovski on 2022. 02. 03..
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            HStack {
                Button(action: {print("Start recording")}) {
                    Image(systemName: "waveform.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 80)
                        .foregroundColor(.red)
                        .padding(10)
                }
            }
            .navigationBarTitle("Voice Recorder")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
