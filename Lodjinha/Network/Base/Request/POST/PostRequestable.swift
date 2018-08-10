//
//  PostRequestable.swift
//  Lodjinha
//
//  Created by Lázaro Lima dos Santos on 09/08/18.
//

import Foundation

protocol PostRequestable {
    func post(url: String, completionHandler: @escaping (Data?, NetworkError?) -> Void)
}
