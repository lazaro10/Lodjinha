//
//  HomePresenterFactory.swift
//  Lodjinha
//
//  Created by Lázaro Lima dos Santos on 10/08/18.
//

import UIKit

enum HomePresenterFactory {
    static func make(delegate: HomePresentation, interactor: HomeInteractor) -> HomePresenter {
        return HomePresenter(delegate: delegate, interactor: interactor)
    }
}
