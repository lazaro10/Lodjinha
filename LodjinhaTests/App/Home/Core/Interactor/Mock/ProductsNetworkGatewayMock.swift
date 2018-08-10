//
//  ProductsNetworkGatewayMock.swift
//  LodjinhaTests
//
//  Created by Lázaro Lima dos Santos on 10/08/18.
//

import Foundation

@testable import Lodjinha
class ProductsNetworkGatewayMock: ProductsGateway {
    var onError: Bool = true
    var offset: Int?
    lazy var productsStub = { (0..<40).map { _ in self.product } }()
    
    private let product = Product(
        id: 1,
        name: "Tv 50",
        urlImage: URL(string: "www.americanas.com.br")!,
        description: "TV 50 para assistir os jogos da copa",
        priceFrom: 4000,
        priceTo: 3500,
        category: CategoryProduct(
            id: 2,
            description: "Eletronicos",
            urlImage: URL(string: "www.americanas.com.br")!
        )
    )
    
    func bestSellerProducts(url: String, completionHandler: @escaping ((Result<[Product], NetworkError>) -> Void)) {
        if onError {
            completionHandler(Result.fail(NetworkError.weakConnection))
        } else {
            completionHandler(Result.success(productsStub))
        }
        
    }
    
    func products(url: String, offset: Int, limit: Int, idCategory: Int, completionHandler: @escaping ((Result<[Product], NetworkError>) -> Void)) {
        self.offset = offset
        if onError {
            completionHandler(Result.fail(NetworkError.weakConnection))
        } else {
            completionHandler(Result.success(productsStub))
        }
    }
    
    func product(url: String, idProduct: Int, completionHandler: @escaping ((Result<Product, NetworkError>) -> Void)) {
        if onError {
            completionHandler(Result.fail(NetworkError.weakConnection))
        } else {
            completionHandler(Result.success(product))
        }
    }
    
    func reserveProduct(url: String, idProduct: Int, completionHandler: @escaping ((Result<Bool, NetworkError>) -> Void)) {
        if onError {
            completionHandler(Result.fail(NetworkError.weakConnection))
        } else {
            completionHandler(Result.success(true))
        }
    }
    
}
