//
//  RoomsApp.swift
//  Rooms
//
//  Created by YL Z on 2022/2/17.
//


import SwiftUI

struct pictures : Identifiable{
    var id = UUID()
    var name: String
    var place: String
    var hasVideo: Bool = false
    
    var imageName: String {return name}
    var thumbnailName: String { return name}
}
#if DEBUG
let testData = [
    pictures(name: "whoo", place:"airplane",hasVideo: false),
    pictures(name: "on my way!", place:"my favorite type of car",hasVideo: false),
    pictures(name: "go shopping", place:"shopping mall",hasVideo: false),


]
#endif
