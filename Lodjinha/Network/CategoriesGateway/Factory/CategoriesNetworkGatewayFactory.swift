//
//  CategoriesNetworkGatewayFactory.swift
//  Lodjinha
//
//  Created by Lázaro Lima dos Santos on 09/08/18.
//

import Foundation

enum CategoriesNetworkGatewayFactory {
    static func make() -> CategoriesGateway {
        return CategoriesNetworkGateway(getRequest: GetRequestFactory.make())
    }
}
