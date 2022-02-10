//for this experiment, I was trying to use the element to replace the code. I was able to locate the code but here is one problem about how to print the code in a line in sequece
import UIKit
import Foundation

let path = Bundle.main.path(forResource: "bat.txt", ofType: nil)
let str = try String(contentsOfFile: path!, encoding: .utf8)

//replace the eyes
print("str.count", str.count)

//define the new bats
var batwings="🌟🌈"
//show 20 of the 20th code
func charAt(_ bateyes:String, _ offset:Int) -> String {
  let index = bateyes.index(bateyes.startIndex, offsetBy: offset)
  let char = bateyes[index]
  return String(char)
}

print(charAt(batwings,0))

//find the eyes
let eyes = "👁"
print(Array(eyes.unicodeScalars))


func replacement(_ str:String, _ offset:Int) -> String {
  let index = str.index(str.startIndex, offsetBy: offset)
  let new = str[index]
  return String(new)
}
print(replacement(str,20))
print(replacement(str,59))

func replaceeye(_ n: Int) {
    for _ in 0..<n {
      print(replacement(str,n))
    }
  }
replaceeye(20)

//count the numbers
let batSplit = str.split(separator: "\n", omittingEmptySubsequences: false)
//print("batSplit.count \(batSplit.count)")
for index in 0...5 {
  let it = batSplit[index]
  print(batwings,it,batwings,it.count, index)
}
