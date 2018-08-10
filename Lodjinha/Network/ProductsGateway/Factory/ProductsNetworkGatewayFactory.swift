//
//  ProductsNetworkGatewayFactory.swift
//  Lodjinha
//
//  Created by Lázaro Lima dos Santos on 10/08/18.
//

import Foundation

enum ProductsNetworkGatewayFactory {
    static func make() -> ProductsGateway {
        return ProductsNetworkGateway(getRequest: GetRequestFactory.make(), postReuqest: PostRequestFactory.make())
    }
}
