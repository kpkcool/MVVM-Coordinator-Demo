//
//  ProductDetailViewController.swift
//  MVVM-Coordinator
//
//  Created by K Praveen Kumar on 26/12/25.
//

import UIKit

class ProductDetailViewController: UIViewController {
    
    private lazy var label : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var addToCartButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Add to Cart", for: .normal)
        button.addTarget(self, action: #selector(handleAddToCart), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var viewModel: ProductDetailViewModel
    
    init(viewModel: ProductDetailViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        
        view.addSubview(label)
        view.addSubview(addToCartButton)
        
        NSLayoutConstraint.activate([
            addToCartButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            addToCartButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.bottomAnchor.constraint(equalTo: addToCartButton.topAnchor, constant: -16)
        ])
        
        label.text = viewModel.product.name
    }
    
    @objc func handleAddToCart() {
        viewModel.addToCart()
    }
}
