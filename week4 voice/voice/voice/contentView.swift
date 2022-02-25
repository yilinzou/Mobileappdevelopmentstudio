//
//  ContentView.swift
//  voice
//
//  Created by YL Z on 2022/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      NavigationView {
      List{
        NavigationLink (destination: Page1()) {
          Text("Music1")
        }
        NavigationLink (destination: Page2()) {
          Text("Music2")
        }
      }
        
      }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
