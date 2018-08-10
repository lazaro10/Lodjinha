//
//  ProductPresenterFactory.swift
//  Lodjinha
//
//  Created by Lázaro Lima dos Santos on 10/08/18.
//

import Foundation

enum ProductPresenterFactory {
    static func make(delegate: ProductPresentation, interactor: ProductInteractor) -> ProductPresenter {
        return ProductPresenter(delegate: delegate, interactor: interactor)
    }
}
