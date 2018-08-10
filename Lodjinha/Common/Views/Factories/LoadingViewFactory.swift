//
//  LoadingViewFactory.swift
//  Lodjinha
//
//  Created by Lázaro Lima dos Santos on 09/08/18.
//

import UIKit

enum LoadingViewFactory {
    static func make(parentView: UIView) -> LoadingView {
        return LoadingView(parentView: parentView)
    }
}
