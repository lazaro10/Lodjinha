//
//  ProductsGateway.swift
//  Lodjinha
//
//  Created by Lázaro Lima dos Santos on 09/08/18.
//

protocol ProductsGateway {
    func bestSellerProducts(url: String, completionHandler: @escaping CompletionHandler<[Product], NetworkError>)
    func products(url: String, offset: Int, limit: Int, idCategory: Int, completionHandler: @escaping ((Result<[Product], NetworkError>) -> Void))
    func product(url: String, idProduct: Int, completionHandler: @escaping CompletionHandler<Product, NetworkError>)
    func reserveProduct(url: String, idProduct: Int,  completionHandler: @escaping CompletionHandler<Bool, NetworkError>)
}
