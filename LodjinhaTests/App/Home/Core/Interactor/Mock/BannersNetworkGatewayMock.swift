//
//  BannersNetworkGatewayMock.swift
//  LodjinhaTests
//
//  Created by Lázaro Lima dos Santos on 10/08/18.
//

import Foundation

@testable import Lodjinha
class BannersNetworkGatewayMock: BannersGateway {
    lazy var bannersStub = { (0..<3).map { _ in self.banner } }()
    var onError: Bool = false
    private let banner = Banner(urlImagem: URL.init(string: "www.americanas.com.br")!, linkUrl: URL.init(string: "www.americanas.com.br")!)
    
    func banners(url: String, completionHandler: @escaping ((Result<[Banner], NetworkError>) -> Void)) {
        if onError {
            completionHandler(Result.fail(NetworkError.weakConnection))
        } else {
            completionHandler(Result.success(bannersStub))
        }
    }
    
    
}
