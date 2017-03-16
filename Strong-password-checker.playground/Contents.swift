//: Playground - noun: a place where people can play

import UIKit

var str = "asdwWWWd23ddC";

func checkPassword(forPassword: String) {
    var lowerLetterStack: Array<Character>=[]
    var upperLetterStack: Array<Character>=[]
    var numberStack: Array<Character>=[]
    var consecutiveIndex = Int();

    var string: Array<Character>=[]
    
    var isUpper:Bool = false;
    var isLower:Bool = false;
    var isNumber:Bool = false;
    
    for i in 0..<forPassword.characters.count {
        let index = forPassword.index(forPassword.startIndex, offsetBy: i)
        string.append(forPassword[index])
        
        if (string[i] >= "a" && string[i] <= "z"){
            isLower = true;
            lowerLetterStack.append(string[i])
        }
        if (string[i] >= "A" && string[i] <= "Z"){
            isUpper = true;
            upperLetterStack.append(string[i]);
        }
        if (string[i] >= "0" && string[i] <= "9"){
            isNumber = true;
            numberStack.append(string[i])
        }
        if (string.count > 2) {
            if ((string[i] == string[i-1]) && (string[i-1] == string[i-2])) {
                print("her")
                consecutiveIndex = i;
            }
        }
    }
    
    if (isUpper)
}

checkPassword(forPassword: str)