//
//  Login.swift
//  timer2
//
//  Created by YL Z on 2022/3/9.
//

import SwiftUI
let storedUsername = "Myusername"
let storedPassword = "Mypassword"


struct Login: View {
  @State private var username: String = ""
  @State private var password: String = ""
  @State var authenticationDidFail: Bool = false
  @State var authenticationDidSucceed: Bool = false
  var body: some View {
    NavigationView {
    ZStack{
    VStack {
      welcomtext()
      UsernameTextField(username: $username)
      
      PasswordSecureField(password: $password)
      if authenticationDidFail {
        Text("Information not correct. Try again.")
          .offset(y: -10)
          .foregroundColor(.red)
      }
      
      Button(action: {
        if self.username == storedUsername && self.password == storedPassword {
          self.authenticationDidSucceed = true
          self.authenticationDidFail = false
        } else {
          self.authenticationDidFail = true
        }
      }) {
        LoginButtonContent()
      }
      
//      NavigationLink(destination: ContentView()){
//        if self.username == storedUsername && self.password == storedPassword {
//          self.authenticationDidSucceed = true
//          self.authenticationDidFail = false
//          } else {
//          self.authenticationDidFail = true
//          }
//        LoginButtonContent()
//      }
    }
    .padding()
      
      if authenticationDidSucceed {
        Text("Login succeeded!")
          .font(.headline)
          .frame(width: 250, height: 80)
          .background(Color.green)
          .cornerRadius(20.0)
          .foregroundColor(.white)
//          .animation(.easeInOut(duration: 1)
//                      .repeatForever(autoreverses: false)
//                     )
      }
}
  }
  
  }}
func signIn(){
  print("signin")
  
}

struct Login_Previews: PreviewProvider {
  static var previews: some View {
    Login()
  }
}


struct welcomtext: View {
  var body: some View {
    Text("Welcome!")
      .font(.largeTitle)
      .fontWeight(.semibold)
      .padding(.bottom, 20)
  }
}

struct LoginButtonContent: View {
  var body: some View {
    Text("LOGIN")
      .font(.headline)
      .foregroundColor(.white)
      .padding()
      .frame(width: 220, height: 60)
      .background(Color.green)
      .cornerRadius(15.0)
  }
}

struct UsernameTextField: View {
  @Binding var username: String
  var body: some View {
    TextField("Username", text: $username)
      .padding()
      .background(Color.gray
                    .opacity(0.1))
      .cornerRadius(5.0)
      .padding(.bottom, 20)
  }
}

struct PasswordSecureField: View {
  @Binding var password: String
  var body: some View {
    SecureField("Password", text: $password)
      .padding()
      .background(Color.gray
                    .opacity(0.1))
      .cornerRadius(5.0)
      .padding(.bottom, 20)
  }
}
