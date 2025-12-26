//
//  ProductListViewModel.swift
//  MVVM-Coordinator
//
//  Created by K Praveen Kumar on 26/12/25.
//

import Foundation

class ProductListViewModel {
    
    private(set) var products: [Product] = []
    
    var onProductsUpdated: (() -> Void)?
    var onProductSelected: ((Product) -> Void)?
    
    func load() {
        products = ProductService.fetchProducts()
        onProductsUpdated?()
    }
    
    func didSelectItem(at index: Int) {
        onProductSelected?(products[index])
    }
}
