//
//  ErrorViewFactory.swift
//  Lodjinha
//
//  Created by Lázaro Lima dos Santos on 09/08/18.
//

import UIKit

enum ErrorViewFactory {
    static func make(parentView: UIView) -> ErrorView {
        return ErrorView(parentView: parentView)
    }
}
