//
//  ViewConfiguration.swift
//  Lodjinha
//
//  Created by Lázaro Lima dos Santos on 09/08/18.
//

import Foundation
protocol ViewConfiguration: class {
    func setupConstraints()
    func buildViewHierarchy()
    func setupViewConfiguration()
    func configureViews()
}

extension ViewConfiguration {
    func setupViewConfiguration() {
        buildViewHierarchy()
        setupConstraints()
        configureViews()
    }
    func configureViews() {
        
        
    }
}
