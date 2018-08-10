//
//  ProductViewControllerMock.swift
//  LodjinhaTests
//
//  Created by Lázaro Lima dos Santos on 10/08/18.
//

import Foundation

@testable import Lodjinha
class ProductViewControllerMock: ProductPresentation {
    
    var calledOnLoading: Bool!
    var calledOffLoading: Bool!
    var calledOnError: NetworkError!
    var calledOnProduct: ProductViewModel!
    var calledOnReserved: String!
    
    func onLoading() {
        calledOnLoading = true
    }
    
    func offLoading() {
        calledOffLoading = true
    }
    
    func onError(error: NetworkError) {
        calledOnError = error
    }
    
    func onProduct(product: ProductViewModel) {
        calledOnProduct = product
    }
    
    func onReserved(message: String, isSuccess: Bool) {
        calledOnReserved = message
    }
    
}
