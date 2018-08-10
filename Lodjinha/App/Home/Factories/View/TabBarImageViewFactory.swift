//
//  TabBarImageViewFactory.swift
//  Lodjinha
//
//  Created by Lázaro Lima dos Santos on 10/08/18.
//

import UIKit

enum TabBarImageViewFactory {
    static func make() -> UIImageView {
        let image = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        image.image = R.image.logoApp()
        image.contentMode = .scaleAspectFit
        return image
    }
}
