//
//  ProductCoordinator.swift
//  MVVM-Coordinator
//
//  Created by K Praveen Kumar on 26/12/25.
//

import UIKit

class ProductCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vm = ProductListViewModel()
        let vc = ProductListViewController(viewModel: vm)
        
        vm.onProductSelected = { [weak self] product in
            self?.showProductDetail(product)
        }
        
        navigationController.pushViewController(vc, animated: true)
    }
    
    private func showProductDetail(_ product: Product) {
        let vm = ProductDetailViewModel(product: product)
        let vc = ProductDetailViewController(viewModel: vm)
        vm.onAddToCart = { [weak self] in
            self?.showCart()
        }
        navigationController.pushViewController(vc, animated: true)
    }
    
    private func showCart() {
        let cartCoordinator = CartCoordinator(navigationController: navigationController)
        cartCoordinator.start()
    }
}
