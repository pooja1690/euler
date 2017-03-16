//: Playground - noun: a place where people can play

import UIKit

//        7
//       /  \
//      6   12
//     /   /  \
//    1   8   18

class BST {
    var Key: Int
    var Left: BST?
    var Right: BST?
    
    init(Left: BST?, Key: Int, Right: BST?) {
        self.Key = Key
        self.Left = Left
        self.Right = Right
    }
    //Lets first populate the tree to get started with manually with some values in the given array. Consider the following array
}

func SearchForNode(inBST: BST?, searchValue: Int) -> Bool{
    //making sure we have not exhausted all our node search due to recursive call
    
    if (inBST == nil) {
        return false
    }
    //searching in the root node key
    if (inBST?.Key == searchValue) {
        return true
    }
    //if value is less than key then go left
    if (searchValue < (inBST?.Key)!){
        return SearchForNode(inBST: inBST?.Left, searchValue: searchValue)
    }
    //if value is greater than key go right
    else {
        return SearchForNode(inBST: inBST?.Right, searchValue: searchValue)
    }
}

//Naive insertion to the binary search tree.

let eightNode = BST(Left: nil, Key: 8, Right: nil)
let eighteenNode = BST(Left: nil, Key: 18, Right: nil)
let oneNode = BST(Left: nil, Key: 1, Right: nil)
let twelveNode = BST(Left: eightNode, Key: 12, Right: eighteenNode)
let sixNode = BST(Left: oneNode, Key: 6, Right: nil)
let sevenNode = BST(Left: sixNode, Key: 7, Right: twelveNode)

let isValuePresent = SearchForNode(inBST: sevenNode, searchValue: 1)
