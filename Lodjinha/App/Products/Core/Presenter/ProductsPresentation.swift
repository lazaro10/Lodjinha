//
//  ProductsPresentation.swift
//  Lodjinha
//
//  Created by Lázaro Lima dos Santos on 10/08/18.
//

import Foundation

protocol ProductsPresentation: class {
    func onLoading()
    func offLoading()
    func onError(error: NetworkError)
    func onProducts(products: [ProductViewModel])
}
