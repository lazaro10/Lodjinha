//
//  CategoriesNetworkGateway.swift
//  Lodjinha
//
//  Created by Lázaro Lima dos Santos on 09/08/18.
//

import Foundation

class CategoriesNetworkGateway: CategoriesGateway {
    
    private let getRequest: GetRequestable
    
    init(getRequest: GetRequestable) {
        self.getRequest = getRequest
    }
    
    func categories(url: String, completionHandler: @escaping ((Result<[CategoryProduct], NetworkError>) -> Void)) {
        getRequest.get(url: url) { (data, error) in
            let result = GenerateResultObjectToArray<CategoriesCodable, CategoryProduct>(self.converterCategories).generate(data, error)
            completionHandler(result)
        }
    }
    
    private func converterCategories(entity: CategoriesCodable) -> [CategoryProduct] {
        return entity.data.map ({
            CategoryProduct(id: $0.id, description: $0.description, urlImage: $0.urlImagem)
        })
    }
    
}
