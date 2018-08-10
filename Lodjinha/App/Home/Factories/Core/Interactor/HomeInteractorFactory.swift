//
//  HomeInteractorFactory.swift
//  Lodjinha
//
//  Created by Lázaro Lima dos Santos on 10/08/18.
//

import Foundation

enum HomeInteractorFactory {
    static func make() -> HomeInteractor {
        return HomeInteractor(categoriesGateway: CategoriesNetworkGatewayFactory.make(), productsGateway: ProductsNetworkGatewayFactory.make(), bannersGateway: BannersNetworkGatewayFactory.make())
    }
}
