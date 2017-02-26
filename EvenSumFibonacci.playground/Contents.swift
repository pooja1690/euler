//: Playground - noun: a place where people can play

import UIKit

var n = 1
var temp = 0
var sum = 0

func fibo(n: Int) {
    if (temp > 40000000) {
        print(temp);
    } else {
        let value = n+temp;
        if (value%2 == 0) {
            sum = sum + value;
            print(sum);
        }
        temp = n;
        return fibo(value);
    }
}

fibo(n);
