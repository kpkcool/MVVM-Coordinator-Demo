//
//  Coordinator.swift
//  MVVM-Coordinator
//
//  Created by K Praveen Kumar on 26/12/25.
//

import UIKit

protocol Coordinator: AnyObject {
    var navigationController: UINavigationController { get }
    func start()
}
