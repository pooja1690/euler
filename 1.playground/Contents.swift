//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


for i in 0..<2 {
    
}


//var a: (Int, Int) -> Int;
//
//func a(_: Int,_: Int) -> Int {
//    return 4;
//}
//
//func customer() -> String{
//    return "hello"
//}
//
//let a = func server(customer:() -> String) -> String{
//    return customer()
//}
//
//print(a)
//
//enum test {
//    case qr(Int, Int, Int, Int);
//    
//    case br(Int);
//}
//
//let y = test.br;
//
//switch y {
//case let .qr(1)
//}

struct Point {
    var x = 0.0;
    var y = 0.0;
}

struct origin {
    var x = 0.0;
    var y = 0.0;
}

struct c {
    var point = Point();
    var oorigin = origin();
    var y: Point {
        get {
            let new = 6.0;
            return Point(x:new, y: point.y);
        }
        set {
            let new = point.x + oorigin.y;
            point.x = new;
        }
    }
}

var abc = c.init(point: Point(x:1.0, y:2.0), oorigin: origin(x:3.0, y:4.0));
let x = abc.y;
abc.y = Point(x:15, y:45);

class mmm {
var x: Int = 0 {
    willSet(y) {
        print("i am setting")
    }
    didSet {
        print("i am done")
    }
}
}

mmm().x = 10;
print(mmm().x)


var ff:[String] = [];
ff.append("1");
ff.append("2");
var f:String;
f = "hello";

var fff = String();
var xde: Dictionary<String,String> = [:]

protocol human {
    var name:String {
        get
        set
    }
    func getKick();
}

func test(completionHandler: @escaping (_ value: Array<Any>) -> Void) {
    let keyVal: Array = ["1","2"];
    return completionHandler(keyVal)
}

test() { data in
    
    let x = data;
}

class testc : human {
    var name: String;

    init (test: String) {
        name = test;
    }
    func getKick() {
        print("kicked")
    }
}

var a = testc(test:"bbb");
a.getKick();

struct y : human {
    func getKick() {
        print("kicked from struct");
    }

    var name: String;

    
}

struct del {
    var delegate:human;
}
var st = y(name:"Bob");
st.name;
st.getKick();


test() {
    done in
    print("yp");
}

class Node {
    var children: [Node] = [];
    var value:  String;
    weak var parent:Node?
    init(value:String) {
        self.value = value;
    }
    
    func addNode(child:Node) {
        children.append(child);
        child.parent = self;
    }
}

var beverages = Node(value:"beverages");
var hotBeverages = Node(value:"hot");
var coldBeverages = Node(value: "cold");

let tea = Node(value: "tea")
let coffee = Node(value: "coffee")
let cocoa = Node(value: "cocoa")

let blackTea = Node(value: "black")
let greenTea = Node(value: "green")
let chaiTea = Node(value: "chai")

let soda = Node(value: "soda")
let milk = Node(value: "milk")

let gingerAle = Node(value: "ginger ale")
let bitterLemon = Node(value: "bitter lemon")

beverages.addNode(child: hotBeverages)
beverages.addNode(child: coldBeverages)

hotBeverages.addNode(child: tea)
hotBeverages.addNode(child: coffee)
hotBeverages.addNode(child: cocoa)

coldBeverages.addNode(child: soda)
coldBeverages.addNode(child: milk)

tea.addNode(child: blackTea)
tea.addNode(child: greenTea)
tea.addNode(child: chaiTea)

soda.addNode(child: gingerAle)
soda.addNode(child: bitterLemon)



extension Node {
    func search(value: String) -> Node? {
            print(self.value)
        print(value);
        if (value == self.value) {
            print("found");
        }
        for child in children {
            child.search(value: value);
        }
        return self;

    }
}
beverages.search(value:"soda");

class Nodee<T> {

    var value:String;
    var left: Nodee?;
    var right: Nodee?;
    
    init(value: String) {
        self.value = value;
    }
}

enum BinarySearchTree<T: Comparable> {
    case empty;
    indirect case node(BinarySearchTree, T, BinarySearchTree);
    
    private func insertValue(newValue:T){
//        case empty
//        case node
        
    }
}

var fiveNode = BinarySearchTree.node(.empty, "5", .empty);

func searchBinary(key: Int, imin: Int, imax: Int) {
    
}

let rr = [4,5,6,7,22,23,445]

let closuretest = rr.sorted(by: >)

func yy() -> Int{
    return 5
}
func xx() -> () -> Int {
    return yy
}


func xyx(completionHandler: (String) -> Void) {
    
    return completionHandler("5")
}

xyx() { data in
    print("yo")
}




