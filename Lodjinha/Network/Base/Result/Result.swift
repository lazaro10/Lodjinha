//
//  Result.swift
//  Lodjinha
//
//  Created by Lázaro Lima dos Santos on 09/08/18.
//

import Foundation

enum Result<T, E> where E: Error {
    case success(T)
    case fail(E)
}
