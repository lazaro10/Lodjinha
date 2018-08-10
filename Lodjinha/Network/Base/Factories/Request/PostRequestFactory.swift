//
//  PostRequestFactory.swift
//  Lodjinha
//
//  Created by Lázaro Lima dos Santos on 09/08/18.
//

enum PostRequestFactory {
    static func make() -> PostRequestable {
        return PostRequest()
    }
}
