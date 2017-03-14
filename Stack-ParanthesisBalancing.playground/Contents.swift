//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class Stack {
    func balanceArray(s: inout String) {
        var stack: Array<Character> = [];
        var chart: Array<Character> = [];
        var endIndex = 0;
        for i in 0 ..< s.characters.count {
            let index = s.index(s.startIndex, offsetBy: i)
            
            if s[index] == "{" {
                endIndex = (s.characters.count - i);
            }
            if s[index] == "}" {
                chart.append(s[index])
            } else {
                if i == endIndex {
                    stack.append("}");
                }
                stack.append(s[index]);
            }
        }
    }
}

var sss = "df{erty}ttfgtt"

Stack().balanceArray(s: &sss);
