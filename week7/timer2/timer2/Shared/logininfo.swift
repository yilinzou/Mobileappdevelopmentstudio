//
//  logininfo.swift
//  timer2
//
//  Created by YL Z on 2022/3/11.
//
import SwiftUI

// Examples: Breakfast, Mains
// See menu.json
// required by SwiftUI Identifiable
// requried by decode Codable
struct logininfo: Codable, Identifiable {
  var id: UUID
  var name: String
  var items: [AccountItem]
}

// required by SwiftUI Identifiable
// requried by decode Codable
struct AccountItem: Codable, Equatable, Identifiable {
  var id: UUID
  var name: String
  var Password: String
  
  
//#if DEBUG
//  static let example = MenuItem(id: UUID(), name: "Maple French Toast", photoCredit: "Joseph Gonzalez", price: 6, restrictions: ["G", "V"], description: "Sweet, fluffy, and served piping hot, our French toast is flown in fresh every day from Maple City, Canada, which is where all maple syrup in the world comes from. And if you believe that, we have some land to sell you…")
//#endif
}
