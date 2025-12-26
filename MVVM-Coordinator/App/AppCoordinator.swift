//
//  AppCoordinator.swift
//  MVVM-Coordinator
//
//  Created by K Praveen Kumar on 26/12/25.
//

import UIKit

class AppCoordinator: Coordinator {
    
    let navigationController = UINavigationController()
    private var childCoordinators: [Coordinator] = []
    
    func start() {
        let productCoordinator = ProductCoordinator(navigationController: navigationController)
        childCoordinators.append(productCoordinator)
        productCoordinator.start()
    }
    
}
