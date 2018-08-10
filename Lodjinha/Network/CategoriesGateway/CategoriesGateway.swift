//
//  CategoriesGateway.swift
//  Lodjinha
//
//  Created by Lázaro Lima dos Santos on 09/08/18.
//

protocol CategoriesGateway {
    func categories(url: String, completionHandler: @escaping CompletionHandler<[CategoryProduct], NetworkError>)
}
