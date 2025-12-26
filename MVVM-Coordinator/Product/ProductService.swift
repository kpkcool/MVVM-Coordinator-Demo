//
//  ProductService.swift
//  MVVM-Coordinator
//
//  Created by K Praveen Kumar on 26/12/25.
//

import Foundation

class ProductService {
    static func fetchProducts() -> [Product] {
        
        var products: [Product] = []
        
        // DispatchQueue.main.asyncAfter(deadline: .now() + 0) {
            print("Products fetched successfully")
            products.append(Product(id: "1", name: "iPhone 15", price: 79999))
            products.append(Product(id: "2", name: "AirPods Pro", price: 24999))
            products.append(Product(id: "3", name: "Apple Watch", price: 39999))
        // }
        
        return products
    }
}
