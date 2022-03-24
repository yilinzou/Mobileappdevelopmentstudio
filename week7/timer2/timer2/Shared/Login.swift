//
//  Login.swift
//  timer2
//
//  Created by YL Z on 2022/3/9.
//https://stackoverflow.com/questions/60549028/is-there-a-way-to-add-an-extra-function-to-navigationlink-swiftui

import SwiftUI

let storedUsername: [String] = ["Albemarle", "Brandywine", "Cheesecake","Honeybee"]
//storedUsername.count
//storedUsername.isEmpty
var user1 = storedUsername[0]
var user2 = storedUsername[1]
var user3 = storedUsername[2]
var user4 = storedUsername[3]

struct Login: View {
  @State private var username: String = ""
  @State var authenticationDidFail: Bool = false
  @State var authenticationDidSucceed: Bool = false
  
  var body: some View {
    NavigationView {
    ZStack{
    VStack {
      welcomtext()
      UsernameTextField(username: $username)
      if authenticationDidFail {
        Text("Information not correct. Try again.")
          .offset(y: -10)
          .foregroundColor(.red)}
      //navigation link tie to a variable
      NavigationLink(destination: ContentView().onAppear{self.somefunc()}){
        Text("LOGIN")
          .font(.headline)
          .foregroundColor(.white)
          .padding()
          .frame(width: 220, height: 60)
          .background(Color.green)
          .cornerRadius(15.0)
       }
    .padding()
      
      if authenticationDidSucceed {
        Text("Login succeeded!")
          .font(.headline)
          .frame(width: 250, height: 80)
          .background(Color.green)
          .cornerRadius(20.0)
          .foregroundColor(.white)
      }}
  }
  }
  }
  func somefunc(){
    if storedUsername.contains("\(self.username)")
    {
      self.authenticationDidSucceed = true
      self.authenticationDidFail = false
    } else {
      self.authenticationDidFail = true
    }
      LoginButtonContent()
  }
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
      .frame(width: 320, height: 50)
      .background(Color.gray
      .opacity(0.1))
      .cornerRadius(5.0)
      .padding(.bottom, 20)
  }
}
}


