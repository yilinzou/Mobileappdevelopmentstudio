//https://felweathers.wordpress.com/2016/04/25/creating-a-tap-counter-in-swift/



//1.set the seconds to minutes
//2. when time is up, pop up dialogue
import SwiftUI



struct ContentView: View {
//  NavigationLink(destination: reset) {
//    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label Content@*/Text("Navigate")/*@END_MENU_TOKEN@*/
//  }
  // Time remaining in seconds. The source of truth.
  @AppStorage("timeRemaining") var timeRemaining = 1800
  
  @AppStorage("timeRemaininginminute") var timeRemaininginminute = 30
  
  //button pressed
  
  
  
  
  
  // Flag for timer state.
  @State var timerIsRunning = false
  
  // Timer gets called every second.
  let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
  var counterNumbers : Int = 0
  
  var body: some View {
    
    
   

    VStack {
      
      Label("Label"/*@END_MENU_TOKEN@*/, systemImage: /*@START_MENU_TOKEN@*/"42.circle")
        
      
      Text("Stretch Times")
      // TimeDisplay view with data bindings.
      // NOTE: Syntax used for data bindings.
      TimeDisplay(timeRemaining: $timeRemaining)
      
      Button(action: {
        // Toggle timer on/off.
        self.timerIsRunning.toggle()
          
        // If timer is not running, reset back to 60
        if !self.timerIsRunning {
          self.timeRemaining = 1800
        }
      }) {
        // Start / Stop Button
        Text(timerIsRunning ? "Reset" : "Stretch")
          .font(.system(size: 30))
          .frame(width: 160, height: 60)
          .background(Color.black)
          .foregroundColor(Color.white)
          .cornerRadius(30)
      }
    }
    
    .onReceive(timer) { _ in
      // Block gets called when timer updates.
      
      // If timeRemaining and timer is running, count down.
      if self.timeRemaining > 0 && self.timerIsRunning {
        self.timeRemaining -= 1
        
        print("Time Remaining:", self.timeRemaining)
      }
    }
    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
    .background(Color.white)
    .edgesIgnoringSafeArea(.all)
  }
}

struct TimeDisplay: View {
  // Binding variable.
  @Binding var timeRemaining: Int
  
  var body: some View {
    VStack {
      Text("\(timeRemaining) m")
        .font(.system(size: 80))
        .foregroundColor(.black)
        .onTapGesture {
          // On tap gesture, increment timer by 10.
          self.timeRemaining += 10
        }
      Text("\(timeRemaining) Seconds")
        .font(.system(size: 20))
        .foregroundColor(.black)
//        .onTapGesture {
//          // On tap gesture, increment timer by 10.
//          self.timeRemaining += 10
//        }
//      Text("Tap on time to increase")
//        .foregroundColor(.black)
//        .padding()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

// Source
// https://github.com/mobilelabclass/mobile-lab-timer-kit

