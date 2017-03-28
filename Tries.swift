//
//  Tries.swift
//  
//
//  Created by Ashok on 3/18/17.
//
//

import Foundation

class TrieNode {
    var Key: String;
    var children: Array<String>
    var isFinal: Bool
    var level: Int
}

class Trie {
    var root : TrieNode?

    func insertIntoTrie(value: String) {
        if (value.characters.count == 0) {
            return
        }
        var current: TrieNode = root
        
        if (current.Key == nil) {
            current.Key = value;
        }
        
        for character in value.lowercased().character {
            
        }
    }


}
