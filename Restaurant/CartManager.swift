//
//  CartManager.swift
//  Restaurant
//
//  Created by Angel González Torres on 16/06/23.
//

import Foundation

class CartManager: ObservableObject{
    @Published private(set) var products: [MenuItem] = []
    @Published private (set) var total: Int = 0
    
    func addToCart(item: MenuItem) {
        products.append(item)
        total += item.price
    }
    
    func removeFromCart (item: MenuItem) {
        
        products = products.filter { $0.id != item.id}
        total -= item.price
    }
}
