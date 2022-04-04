//
//  ContentView.swift
//  Shared
//
//  Created by YL Z on 2022/3/3.
//

import SwiftUI

struct ContentView: View {
  @AppStorage("timeRemaining") var timeRemaining = 30
  @State var timerIsRunning = false
  @State var count = 0
  let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
  
  
    var body: some View {
      VStack{
        HStack(){
      Button("Start Today") {
        self.timerIsRunning = true
        
        //        print(timerIsRunning)
      }
      .padding(16)
          Spacer()
            
      }
      VStack{
        
        TimeDisplay(timeRemaining: $timeRemaining)
        Button(action: {
            self.timeRemaining = 30
          count += 1
          print(count)

        }) {
          // Start / Stop Button
          
          Text("Strech")
            .font(.system(size: 30))
            .frame(width: 160, height: 60)
            .background(Color.black)
            .foregroundColor(Color.white)
            .cornerRadius(30)
          Text("\(count)")
            .font(.system(size: 30))
          
        }
        .onReceive(timer) { _ in
          // Block gets called when timer updates.
          
          // If timeRemaining and timer is running, count down.
          if self.timeRemaining > 0 && self.timerIsRunning {
            self.timeRemaining -= 1
            
            print("Time Remaining:", self.timeRemaining)
          }
          
          if self.timeRemaining == 0 && self.timerIsRunning {
            self.timeRemaining = 30
          }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(Color.white)
        .edgesIgnoringSafeArea(.all)
        

        
        
        Button("End Today") {
          self.timerIsRunning = false
          print(timerIsRunning)
        }
        
    }
    }
}
}
struct TimeDisplay: View {
  // Binding variable.
  @Binding var timeRemaining: Int
  
  var body: some View {
    VStack {
      Text("\(timeRemaining)")
        .font(.system(size: 120))
        .foregroundColor(.black)
        .fontWeight(.heavy)
.font(.system(size: 70))

.frame(width: 360, height: 300)

    
      
    
    }
  }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
