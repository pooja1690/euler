//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let v = 6;
let n = 6
let ar = "1 2 5 4 6 7"
let clean = ar.replacingOccurrences(of: " ", with: "")

for i in clean.characters {
    let x = Int(String(i))
    
    if x == v {
        print(clean.characters.index(of: i)!);
    }
}