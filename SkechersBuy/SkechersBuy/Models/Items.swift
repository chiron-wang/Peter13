//
//  Items.swift
//  SkechersBuy
//
//  Created by mikewang on 2019/9/20.
//  Copyright © 2019 mikewang. All rights reserved.
//

import Foundation

class Items {
    static let sharedInstance = Items()
    var shoppingCart = ShoppingCart()
}

struct ShoppingCart {
    var shoesDictionary = [
        "man1": Shoes(name: "man1", price: 3490, count: 0),
        "man2": Shoes(name: "man2", price: 2990, count: 0),
        "man3": Shoes(name: "man3", price: 3090, count: 0),
        "man4": Shoes(name: "man4", price: 3190, count: 0),
        "woman1": Shoes(name: "woman1", price: 3490, count: 0),
        "woman2": Shoes(name: "woman2", price: 2990, count: 0),
        "woman3": Shoes(name: "woman3", price: 3090, count: 0),
        "woman4": Shoes(name: "woman4", price: 3190, count: 0),
        "woman5": Shoes(name: "woman5", price: 2890, count: 0),
        "woman6": Shoes(name: "woman6", price: 3290, count: 0),
    ]
    
    func calculate() -> Int {
        var result = 0
        for shoes in shoesDictionary {
            result += shoes.value.count * shoes.value.price
        }
        
        return result
    }
    
    func getMoney(_ number: Int) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        let result = formatter.string(from: NSNumber(value: number)) ?? "$ 0"
        return result
    }
    
    func getShoesIndex(_ stepperID: String) -> Int {
        var result = 0
        switch stepperID {
        case "woman1", "man1":
            result = 0
        case "woman2", "man2":
            result = 1
        case "woman3", "man3":
            result = 2
        case "woman4", "man4":
            result = 3
        case "woman5":
            result = 4
        case "woman6":
            result = 5
        default:
            result = 0
        }
        return result
    }
}

class Shoes {
    var name: String
    var price: Int
    var count: Int
    init() {
        self.name = ""
        self.count = 0
        self.price = 0
    }
    init(name: String, price: Int, count: Int) {
        self.name = name
        self.price = price
        self.count = count
    }
}
