//
//  ProductsPresenterFactory.swift
//  Lodjinha
//
//  Created by Lázaro Lima dos Santos on 09/08/18.
//

import UIKit

enum ProductsPresenterFactory {
    static func make(delegate: ProductsPresentation, interactor: ProductsInteractor) -> ProductsPresenter {
        return ProductsPresenter(delegate: delegate, interactor: interactor)
    }
}
