//
//  ProductsViewControllerMock.swift
//  LodjinhaTests
//
//  Created by Lázaro Lima dos Santos on 10/08/18.
//

import Foundation

@testable import Lodjinha

class ProductsViewControllerMock: ProductsPresentation {
    
    var calledOnLoading: Bool!
    var calledOffLoading: Bool!
    var calledOnError: NetworkError!
    var calledOnProducts: [ProductViewModel]!
    
    func onLoading() {
        calledOnLoading = true
    }
    
    func offLoading() {
        calledOffLoading = true
    }
    
    func onError(error: NetworkError) {
        calledOnError = error
    }
    
    func onProducts(products: [ProductViewModel]) {
        calledOnProducts = products
    }
    
    
}
