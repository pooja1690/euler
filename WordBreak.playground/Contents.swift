//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var sentenceToBreak = "AStrangeAllowedMeToBreakTheLine"

func breakSentence(sentenceToBreak: String) {
    
    
    for i in sentenceToBreak.characters {
        
    }
}

class Node {
    var key: String?
    var children: Array<Character>
    
    init() {
        children = []
    }

    func addWordToNode(value: String!) -> Bool{
        if value == nil {
            return false;
        }
        for i in value.characters {
            if !(Node().children.contains(i)) {
                print(i)
                Node().children.append(i)
                print(Node().children.count)

            }
        }
        return true;
    }
}

func constructTrieForWords(_ wordArray: Array<String>) {
    for i in wordArray {
        Node().addWordToNode(value: i)
    }
}



let setOfWords = ["a","s","strange", "strawberry", "all", "aallow", "allowed", "m", "me", "to", "break", "the", "line"]

let x = Node().addWordToNode(value: "strawberry")

//constructTrieForWords(setOfWords)
