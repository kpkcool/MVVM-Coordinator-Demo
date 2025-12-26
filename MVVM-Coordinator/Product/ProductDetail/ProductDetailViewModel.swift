//
//  ProductDetailViewModel.swift
//  MVVM-Coordinator
//
//  Created by K Praveen Kumar on 26/12/25.
//

import Foundation

class ProductDetailViewModel {
    
    let product: Product
    var onAddToCart: (() -> Void)?
    
    init(product: Product) {
        self.product = product
    }
    
    func addToCart() {
        CartStore.shared.add(product)
        onAddToCart?()
    }
}
