//
//  ProductCodable.swift
//  Lodjinha
//
//  Created by Lázaro Lima dos Santos on 09/08/18.
//

import Foundation

struct ProductCodable: Codable {
    let id: Int
    let name: String
    let urlImagem: URL
    let description: String
    let priceFrom: Float
    let priceTo: Float
    let category: CategoryCodable
    
    enum CodingKeys: String, CodingKey {
        case id
        case name = "nome"
        case urlImagem = "urlImagem"
        case description = "descricao"
        case priceFrom = "precoDe"
        case priceTo = "precoPor"
        case category = "categoria"
    }
    
    struct CategoryCodable: Codable {
        let id: Int
        let description: String
        let urlImagem: URL
        
        enum CodingKeys: String, CodingKey {
            case id
            case description = "descricao"
            case urlImagem = "urlImagem"
        }
        
    }
}
