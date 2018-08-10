//
//  ViewCellHandler.swift
//  Lodjinha
//
//  Created by Lázaro Lima dos Santos on 09/08/18.
//

import Foundation

protocol ViewCellHandler: Identifiable {
    associatedtype Item
    func setData(_ data: Item)
}
