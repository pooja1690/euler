//: Playground - noun: a place where people can play

import UIKit

/* Get started with adding a node. Since we need data in a BST to perform any type of operation.
 - if there is no root, then go ahead and create a root
 - if a root exists, then check if key is < or > the root.
 - if it is less, then check if left key is availble.
 - if it is not then add the left node.
 - if it exists, then go one step down and create a new BST on the left */

//         8
//       /  \
//      2    10
//     / \   /  \
//    1   7 9   11


public class Node {
    //Key components for a BST - Key, Left node and Right node.
    var Key: Int?
    var Parent: Node?
    var Left: Node?
    var Right: Node?
    
    init() {
        //we will not be initializing anything here at this time
    }
    
    func insertInto(value: Int) {
        //check if the value matches the current key 
        //This happens if the current node is the root node and its empty (very first time)

        if (self.Key == nil) {
            self.Key = value;
            
        }
        
        //Condition used for classifying the incoming values (either to the left or right based on whether it is greater than or less than the current key).
        
        if (self.Key! >= value) {
            //If the left key we stumbled into is not nil, then make a recursive call with that node as the base node and check its leaves.
            if (self.Left == nil) {
                self.Left?.Parent = self;
            }
            
            self.Left?.Parent = self.Left
            
            print("parent", self.Parent?.Key?.description)
            
            if (self.Left?.Key != nil) {
                self.Left?.insertInto(value: value)
                print("case 1", Left?.Key?.description)

                
            } else {
            //If the left key is empty, then create an new left node child with the give value and assign it as the Left node for self

                let leftChild:Node = Node()
                leftChild.Key = value
                self.Left = leftChild;

                print("case 2", Left?.Key?.description)
            }
        }
        if (self.Key! < value) {
            //If the right key we stumbled into is not nil, then make a recursive call with that node as the base node and check its leaves.

            if (self.Right?.Key != nil) {
                self.Right?.insertInto(value: value)
            } else {
            //If the right key is empty, then create an new right node child with the give value and assign it as the Right node for self
                let rightChild:Node = Node()
                rightChild.Key = value
                self.Right = rightChild;
//                print(Right?.Key?.description)
            }
        }
    }
    
    func searchInTree(value: Int) -> (Node?, Node?) {
        //check if the current key (either the root or the current child node that was called during recursion equates to the value
        
        if (self.Key == value) {
            print(self.Key?.description)
            return (self, self.Parent);
        }
        //if the node key is greater than the search key, then pick the left child of the current node and make a recursive call with that value
        
        if (self.Key! > value) {
            self.Parent = self
            return (Left?.searchInTree(value: value))!
        }
        if (self.Key! < value) {
        //if the node key is less than the search key, then pick the right child of the current node and make a recursive call with that value
            self.Parent = self;
            return (Right?.searchInTree(value: value))!
        }
        else {
            return (nil,nil);
        }
    }
    
    public var isLeaf: Bool {
       return Left == nil && Right == nil
    }
    
    func height() -> Int{
        if isLeaf {
            return 0
        } else {
            return (1 + max(Left?.height() ?? 0, Right?.height() ?? 0))
        }
    }
    
    public func depth() -> Int {
        var node = self
        var edges = 0
        while case let Parent? = node.Parent {
            node = Parent
            edges += 1
        }
        return edges
    }
//    func deleteFromTree(value: Int) {
//        print("parent1",self.Parent?.Key?.description)
//
//        //three cases:
//        //if node with value has no children
//        //if node with value has one child
//        //if node with value has two children
//        var valueNode = searchInTree(value: value)
//        print(valueNode.1?.Key?.description)
//        
////        if (valueNode.Key != nil) {
////            if (valueNode.Left == nil && valueNode?.Right == nil) {
////                valueNode = nil;
////            }
////        }
//    }
}


let tree = Node()
let tree2Array: Array<Int> =  [8, 2, 10, 9, 11, 1, 7]
for i in tree2Array {
    tree.insertInto(value: i)
}
let height = tree.height()
let dep = tree.depth()
//tree.searchInTree(value: 1)
//tree.searchInTree(value: 1)
