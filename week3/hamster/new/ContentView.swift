//
//  ContentView.swift
//  Rooms
//
//  Created by YL Z on 2022/2/17.
//
//the following is for the problem: ld: entry point (_main) undefined. for architecture x86_64 : Xcode 9
@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    //
}

import SwiftUI

struct ContentView: View {
    
    var pics: [pictures] = []
    
    var body: some View {
        
        VStack {
            Image("cover")
                .resizable()
                .scaledToFit()
            VStack {
                Text("Hamster's Travel")
                    .font(.headline)
                Text("To Hawaii!")
                    .font(.subheadline)
                    .foregroundColor(.secondary)

            }
            NavigationView{
            List(pics) { pic in
                NavigationLink(destination: Text(pic.name)){
                HStack{
//                Image(systemName: "photo")
                Image(pic.thumbnailName)
                    .resizable()
                    .cornerRadius(8.0)
                    .frame(width: 90.0, height: 60.0)
                    .scaledToFit()
                VStack(alignment:.leading){
                    Text(pic.name)

                    Text("this is shoot in \(pic.place)")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
            }
            .navigationBarTitle(Text ("Traveling photos"))
            }
        }
        }
    }
    }
#if DEBUG//what is this for?
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(pics: testData)
    }
}
#endif
