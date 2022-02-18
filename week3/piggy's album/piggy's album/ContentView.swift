//
//  ContentView.swift
//  piggy's album
//
//  Created by YL Z on 2022/2/16.
//

import SwiftUI
let imageArray = [
  "rectangle",
  "triangle",
  "hexagon",
  "pentagon",
  "rhombus",
  "diamond",
  "circle",
  "seal",
  "oval",
  "capsule"
]

struct ImageOverlay: View {
    var body: some View {
        ZStack {
            Text("Hamster's vacation")
                .font(.largeTitle)
                
                .foregroundColor(.white)
                .padding(0)
        }
        .frame(width: 300, height: 80, alignment: .center)
        .background(Color.black)
        .opacity(0.8)
        .cornerRadius(9.0)
        .padding(3)
        
    }
}


struct ContentView: View {
    var body: some View {
        Image("hamster1")
                    .resizable()
                    .scaledToFit()
                    .overlay(ImageOverlay(), alignment: .bottom)
        //add the links
        NavigationView {
            
          List {
              
            ForEach(0 ..< imageArray.count) { index in
              let item = imageArray[index]
              NavigationLink {
                VStack {
                  Image(systemName: item)
                    .resizable()
                    .frame(width:100, height: 100)
                  Text(item)
                  Spacer()
                }
              } label: {
                HStack {
                  Image(systemName: item)
                    .resizable()
                    .frame(width:50, height: 50)
                  Text(item)
                  Spacer()
                }
              }
              .navigationTitle("Travel photos")
                
            }
          }
        }
        
                                
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
