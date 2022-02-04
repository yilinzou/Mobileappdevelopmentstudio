//
//  ContentView.swift
//  Bullseye
//
//  Created by YL Z on 2022/2/3.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                VStack {
                    Text("💰💰💰 \n Put the bull's eye as close as you can to")
                        .padding()
                    Text("89")
                }
                HStack {
                    Text("1")
                    Slider(value: .constant(50),in: 1.0...100.0)
                    Text("100")
                }
            }
            Button("Hit Me") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
