//
//  BannersNetworkGatewaySpec.swift
//  LodjinhaTests
//
//  Created by Lázaro Lima dos Santos on 10/08/18.
//

import Foundation
import Quick
import Nimble
import OHHTTPStubs

@testable import Lodjinha
class BannersNetworkGatewaySpec: QuickSpec {
    override func spec() {
        describe("Testes de requisição de banners") {
            var sut: BannersGateway!
            let host = "www.submarino.com.br"
            let fakeApiPath = "https://\(host)/"
            
            beforeEach {
                sut = BannersNetworkGatewayFactory.make()
            }
            
            context("Ao buscar os banners", {
                let bundle = Bundle(for: CategoriesNetworkGatewaySpec.self)
                
                context("Se a chamada for um sucesso", {
                    var banners: [Banner]?
                    beforeEach {
                        stub(condition: isHost(host), response: { (request) -> OHHTTPStubsResponse in
                            let fixturePath = bundle.path(forResource: "Banners", ofType: "json")!
                            return fixture(filePath: fixturePath, status: 200, headers: nil)
                        })
                        sut.banners(url: fakeApiPath, completionHandler: { (result) in
                            if case let .success(newBanners) = result {
                                banners = newBanners
                            }
                        })
                    }
                    it("Deve retornar uma lista de banners", closure: {
                        expect(banners?.count).toEventually(equal(3))
                        expect(banners?.first?.urlImagem).toEventually(equal(URL.init(string: "https://images-google.io/spacey/2017/02/06/MainTop_GAMES_FEV17.png")))
                    })
                })
                
                context("Se a chamada falhar", {
                    var error: NetworkError?
                    beforeEach {
                        stub(condition: isHost(host), response: { (request) -> OHHTTPStubsResponse in
                            return OHHTTPStubsResponse(data:Data(), statusCode: 504, headers: nil)
                                .responseTime(OHHTTPStubsDownloadSpeed1KBPS)
                        })
                        sut.banners(url: fakeApiPath, completionHandler: { (result) in
                            if case let .fail(newError) = result {
                                error = newError
                            }
                        })
                    }
                    it("Deve retornar um erro", closure: {
                        expect(error).toEventuallyNot(beNil())
                    })
                })
                
            })
            
        }
    }
}
