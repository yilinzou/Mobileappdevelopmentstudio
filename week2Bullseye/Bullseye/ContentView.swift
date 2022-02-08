//
//  ContentView.swift
//  Bullseye
//
//  Created by YL Z on 2022/2/3.
//

import SwiftUI



struct ContentView: View {
    @State private var alertIsVisible:
    Bool = false
    @State private var whoIsThere:
    Bool = false
    var body: some View {
        VStack {
            VStack {
                VStack {
                    Text("💰💰💰 \n Put the bull's eye as close as you can to")
                        .bold()
                        .kerning(2.0)
                        .multilineTextAlignment(
                            .center)
                        .lineSpacing(4.0)
                        .font(.footnote)
                        
                        
                    Text("89")
                        .kerning(-1.0)
                        .font(.largeTitle)
                        .fontWeight(.black)
                }
                HStack {
                    Text("1")
                        .bold()
                    Slider(value: .constant(50),in: 1.0...100.0)
                    Text("100")
                        .bold()
                }
            }
            Button("Hit Me") {
                print("hello swift")
                self.alertIsVisible = true
            }
            .alert("Hello there!", isPresented: $alertIsVisible) {
              Button("Awesome!") { }
            } message: {
              Text("This is my first pop-up")
            }
            
            Button("knock knock") {
                self.whoIsThere = true
            }
            .alert("Who's there!", isPresented: $whoIsThere) {
              Button("who!") { }
            } message: {
              Text("who's knocking")
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
