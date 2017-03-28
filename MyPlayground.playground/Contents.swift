//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

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



//class Person {
//    var age: Int;
//    
//    init(initialAge: Int) {
//        self.age = initialAge;
//        // Add some more code to run some checks on initialAge
//        if (self.age < 0) {
//            self.age = 0;
//            
//            print("Age is not valid, setting age to 0.");
//        }
//    }
//    
//    func amIOld() {
//        // Do some computations in here and print out the correct statement to the console
//        if (age < 13) {
//            print("You are young.");
//        }
//        if (age >= 13 && age < 18) {
//            print("You are a teenager.");
//        }
//        if(age >= 18) {
//            print("You are old.");
//        }
//    }
//    
//    func yearPasses() {
//        // Increment the age of the person in here
//        self.age = self.age + 1;
//    }
//}
//
//let t = Int("4")!
//
//for _ in 0..<t {
//    let age = Int("4")!
//    let p = Person(initialAge: age)
//    
//    p.amIOld()
//    
//    for i in 1...3 {
//        p.yearPasses()
//    }
//    
//    p.amIOld()
//    
//    print("")
//}

var a = [-11]
var b = [4, 23, 6]
var c = [0, 8 ,-12]
let i = 0;

func clean(_ arr: inout Array<Int>) -> Array<Int>{
    if (arr.count == 3) {
        return arr;
    }
    arr.append(0);
    return clean(&arr);
}

a = clean(&a);
b = clean(&b);
c = clean(&c);

let x = a[i] + b[i+1] + c[i+2];
let y = c[i] + b[i+1] + a[i+2];

let diff = abs(x-y)































