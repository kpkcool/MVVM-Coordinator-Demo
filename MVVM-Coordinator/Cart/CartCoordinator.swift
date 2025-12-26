//
//  CartCoordinator.swift
//  MVVM-Coordinator
//
//  Created by K Praveen Kumar on 26/12/25.
//

import UIKit

class CartCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vm = CartViewModel()
        let vc = CartViewController(viewModel: vm)
        navigationController.pushViewController(vc, animated: true)
    }
}
