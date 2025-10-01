//
//  Fruit.swift
//  Shopping App (06110)
//
//  Created by Naomi on 2025-09-30.
//

import Foundation

struct Fruit {
    var id: Int
    var title: fruitTitle // we will change this
    var image: String
    var price: String
    var color: String
}

// "apple", "orange"
// enum fruitTitle

enum fruitTitle: String {
    case apple, apricot, avocado, banana, blackberry, cherry, dragonfruit, fig, grapes, kiwi,
         lemon, mango, muskmelon, orange, papaya, pear, pineapple, plum, raspberry, strawbery,
         watermelon
}
