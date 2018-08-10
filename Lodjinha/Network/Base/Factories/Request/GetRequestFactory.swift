//
//  GetRequestFactory.swift
//  Lodjinha
//
//  Created by Lázaro Lima dos Santos on 09/08/18.
//

enum GetRequestFactory {
    static func make() -> GetRequestable {
        return GetRequest()
    }
}
