//: Playground - noun: a place where people can play

import UIKit


struct Struct {
    func find (f: integer_t) -> Void{
        if (f > 100000) {
            let y = String(f)
            let z = String(y.characters.prefix(3));
            let m = String(y.characters.reverse().prefix(3));
            
            if (z == m) {
                let a = integer_t(999);
                let b = integer_t(f);
                
                for x in (a.stride(to: 1, by: -1)) {
                    print(x)
                    if(b/x < 1000) {
                        if(b%x == 0) {
                            print(x);
                            print(b/x);
                            find(0);
                            break;
                        } else {
                            continue;
                        }
                    }
                    else {
                        break;
                    }
                }
                
            }
        }
        find(f-1);
    }
    
}

Struct().find(999999)