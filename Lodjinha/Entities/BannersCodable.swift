//
//  BannersCodable.swift
//  Lodjinha
//
//  Created by Lázaro Lima dos Santos on 09/08/18.
//

import Foundation

struct BannersCodable: Codable {
    let data: [BannerCodable]
    
    struct BannerCodable: Codable {
        let id: Int
        let urlImagem: URL
        let linkUrl: URL
    }
}
