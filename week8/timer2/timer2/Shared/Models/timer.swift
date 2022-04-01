//
//  timer.swift
//  timer2 (iOS)
//
//  Created by YL Z on 2022/4/1.
//

import Foundation

struct timer: Identifiable, Codable {

  var id: String = UUID().uuidString
  var Stretch: String
  var SedentaryTimeLength: String
  var StartToday: Bool = true
  var userId: String?
}

#if DEBUG
let testData = (1...10).map { i in
  Card(question: "Question #\(i)", answer: "Answer #\(i)")
}
#endif
