//
//  TimerRepository.swift
//  timer2
//
//  Created by YL Z on 2022/3/31.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift
import Combine 
class TimerRepository: ObservableObject {
  private let path: String = "timelogs"
  private let store = Firestore.firestore()
  func add(_ timelog: Card) {
    do {
      // 6
      _ = try store.collection(path).addDocument(from: timelog)
    } catch {
      fatalError("Unable to add timelog: \(error.localizedDescription).")
    }
  }
}
