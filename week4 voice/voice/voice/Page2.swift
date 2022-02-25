//
//  Page2.swift
//  voice
//
//  Created by YL Z on 2022/2/24.
//

import SwiftUI
import AVFoundation


struct Page2: View {
  @State private var soundIndex = 0
  @State private var soundFile = bundleAudio[2]
  @State private var player: AVAudioPlayer? = nil
    var body: some View {
      TimelineView(.animation) { context in
      VStack{
      Image("piano")
        .resizable()
        .scaledToFit()
        
//      Image("play-button")
//        .resizable()
//        .scaledToFit()
//        .cornerRadius(8.0)
//        .padding(30)
//        .frame(width: 160.0, height: 160.0)
//        Spacer()
        Button("Play") {
          print("Button Play")
          player = loadBundleAudio(soundFile)
          print("player", player as Any)
          // Loop indefinitely
          player?.numberOfLoops = -1
          player?.play()
        }
        
        Button("Stop") {
          print("Button Stop")
          player?.stop()
        }
        if let player = player {
//          Text("duration " + String(format: "%.1f", player.duration))
          Text("currentTime " + String(format: "%.1f", player.currentTime))
        }
      }
    }
}

}
struct Page2_Previews: PreviewProvider {
    static var previews: some View {
        Page2()
    }
}
