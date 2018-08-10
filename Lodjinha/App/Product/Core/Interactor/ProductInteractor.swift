//
//  ProductInteractor.swift
//  Lodjinha
//
//  Created by Lázaro Lima dos Santos on 10/08/18.
//

import Foundation

class ProductInteractor {
    private let productsGateway: ProductsGateway
    
    init(productsGateway: ProductsGateway) {
        self.productsGateway = productsGateway
    }
    
    func fetchProduct(idProduct: Int, completion: @escaping CompletionHandler<Product, NetworkError>) {
        productsGateway.product(url: R.string.apI.product(), idProduct: idProduct) { (result) in
            completion(result)
        }
    }
    
    func submitReserveProduct(idProduct: Int, completion: @escaping CompletionHandler<Bool, NetworkError>) {
        productsGateway.reserveProduct(url: R.string.apI.product(), idProduct: idProduct) { (result) in
            completion(result)
        }
    }
}
