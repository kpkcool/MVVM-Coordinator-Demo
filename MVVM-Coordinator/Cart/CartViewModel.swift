//
//  CartViewModel.swift
//  MVVM-Coordinator
//
//  Created by K Praveen Kumar on 26/12/25.
//

import Foundation

class CartViewModel {
    let message: String = "Item added to cart"
    
    func getProducts() -> [Product] {
        return CartStore.shared.products
    }
}
