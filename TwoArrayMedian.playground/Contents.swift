//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//combine the two arrays
//quick sort one array
//find the midkey 

func quickSort(ArrayToSort: Array<Int>) -> [Int]{
    if (ArrayToSort.count < 1) {
        return ArrayToSort;
    }
    let midKey = ArrayToSort[ArrayToSort.count/2]
    var left:Array<Int> = [];
    var right:Array<Int> = [];
    var middle:Array<Int> = [];

    for i in ArrayToSort {
        if (i == midKey) {middle.append(i)}
        if (i > midKey) {right.append(i)}
        if (i < midKey) {left.append(i)}
     }
    
    return quickSort(ArrayToSort: left) +
        middle +
        quickSort(ArrayToSort: right)
    
}

func medium(_ sorted: Array<Int>) -> Int{
    let midKey = sorted.count/2;
    if (sorted.count % 2 == 0) {
        let medium = (sorted[midKey] + sorted[midKey+1])/2
        return medium
    } else {
        let medium = (sorted[midKey])
        return medium
    }
}

var array1 = [3,2,6,8,4,2]
var array2 = [4,6,9,8,6,5,2,1,3,8]

var array3 = array1 + array2
var sorted = quickSort(ArrayToSort: array3)

var mediumValue = medium(sorted)