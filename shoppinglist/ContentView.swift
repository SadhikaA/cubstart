//
//  ContentView.swift
//  Shopping List
//
//  Created by Tony Hong on 3/11/22.
//

import SwiftUI

struct ContentView: View {
    
    var list = [
        Items(i1: "banana", i2: "Bananas", q: 3),
        Items(i1: "apple", i2: "Apples", q: 4),
        Items(i1: "eggs", i2: "Eggs", q: 12)
    ]
    
    var body: some View {
        NavigationView {
            List (list) { i in
                CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
            }.navigationTitle("Shopping List")
        }
    }
    
    class Items: Identifiable {
        let imageName: String
        let itemName: String
        let quantity: Int
        
        init(i1: String, i2: String, q: Int) {
            self.imageName = i1
            self.itemName = i2
            self.quantity = q
        }
    }
}
