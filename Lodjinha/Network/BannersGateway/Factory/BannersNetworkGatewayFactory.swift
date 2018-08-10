//
//  BannersNetworkGatewayFactory.swift
//  Lodjinha
//
//  Created by Lázaro Lima dos Santos on 09/08/18.
//

import Foundation

enum BannersNetworkGatewayFactory {
    static func make() -> BannersGateway {
        return BannersNetworkGateway(getRequest: GetRequestFactory.make())
    }
}
