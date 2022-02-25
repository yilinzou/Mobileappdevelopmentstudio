//
//  Page1.swift
//  voice
//
//  Created by YL Z on 2022/2/24.
//


import SwiftUI
import AVFoundation

let bundleAudio = [
  "bbc-birds-1.m4a",
  "bbc-birds-2.m4a",
  "scale-1.m4a"
];




func loadBundleAudio(_ fileName:String) -> AVAudioPlayer? {
  let path = Bundle.main.path(forResource: fileName, ofType:nil)!
  let url = URL(fileURLWithPath: path)
  do {
    return try AVAudioPlayer(contentsOf: url)
  } catch {
    print("loadBundleAudio error", error)
  }
  return nil
}


struct Page1: View {
  @State private var soundIndex = 0
  @State private var soundFile = bundleAudio[0]
  @State private var player: AVAudioPlayer? = nil
    var body: some View {
      VStack{
      Image("There-Are-Birds-CD")
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
      }
    }
}

func playmusic(){
  
}


struct Page1_Previews: PreviewProvider {
    static var previews: some View {
        Page1()
      
    }
}
