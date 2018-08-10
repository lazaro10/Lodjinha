//
//  BannersGateway.swift
//  Lodjinha
//
//  Created by Lázaro Lima dos Santos on 09/08/18.
//

protocol BannersGateway {
    func banners(url: String, completionHandler: @escaping CompletionHandler<[Banner], NetworkError>)
}
