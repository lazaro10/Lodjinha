//
//  ProductInteractorFactory.swift
//  Lodjinha
//
//  Created by Lázaro Lima dos Santos on 10/08/18.
//

import Foundation

enum ProductInteractorFactory {
    static func make() -> ProductInteractor {
        return ProductInteractor(productsGateway: ProductsNetworkGatewayFactory.make())
    }
}
