//
//  CategoriesCodable.swift
//  Lodjinha
//
//  Created by Lázaro Lima dos Santos on 09/08/18.
//

import Foundation

struct CategoriesCodable: Codable {
    let data: [CategoryCodable]
    
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
