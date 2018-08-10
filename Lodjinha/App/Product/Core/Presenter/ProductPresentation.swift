//
//  ProductPresentation.swift
//  Lodjinha
//
//  Created by Lázaro Lima dos Santos on 10/08/18.
//

import Foundation

protocol ProductPresentation: class {
    func onLoading()
    func offLoading()
    func onError(error: NetworkError)
    func onProduct(product: ProductViewModel)
    func onReserved(message: String, isSuccess: Bool)
    
}
