//
//  ProductsInteractorFactory.swift
//  Lodjinha
//
//  Created by Lázaro Lima dos Santos on 10/08/18.
//

import Foundation

enum ProductsInteractorFactory {
    static func make() -> ProductsInteractor {
        return ProductsInteractor(productsGateway: ProductsNetworkGatewayFactory.make())
    }
}
