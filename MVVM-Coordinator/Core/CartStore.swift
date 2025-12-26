//
//  CartStore.swift
//  MVVM-Coordinator
//
//  Created by K Praveen Kumar on 26/12/25.
//

import Foundation

final class CartStore {
    static let shared = CartStore()
    private(set) var products: [Product] = []
    
    private init() {}
    
    func add(_ product: Product) {
        products.append(product)
    }
    
    func remove(_ product: Product) {
        products.removeAll { $0.id == product.id }
    }
}
