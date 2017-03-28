//: Playground - noun: a place where people can play

import UIKit

let ATemp = "5 1 5";
let A = ATemp.components(separatedBy: " ").map{ Int($0)! }

let BTemp = "1 2 3";
let B = BTemp.components(separatedBy: " ").map{ Int($0)! }

var AScore = 0;
var BScore = 0;

var sum = 0;
for i in 0...2 {
    if (A[i] > B[i]) {
        AScore = AScore + 1;
    }
    if (A[i] < B[i]) {
        BScore = BScore + 1;
    }
}
print(AScore)
print(BScore)