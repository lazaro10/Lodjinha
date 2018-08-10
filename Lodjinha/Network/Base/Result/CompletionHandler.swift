//
//  CompletionHandler.swift
//  Lodjinha
//
//  Created by Lázaro Lima dos Santos on 09/08/18.
//

typealias CompletionHandler<T, E: Error> = ((Result<T, E>) -> Void)
