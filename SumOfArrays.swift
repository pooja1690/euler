//
//  SumOfArrays.swift
//  
//
//  Created by Ashok on 3/27/17.
//
//

import Foundation
let temp = "1 2 3 4 10 11";
let array = temp.components(separatedBy: " ");

var toInt = Int();
var sum = 0;
for i in array {
    toInt = Int(i)!;
    sum = sum + toInt;
    
}
print(sum);
