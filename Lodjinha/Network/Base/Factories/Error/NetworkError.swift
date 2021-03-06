//
//  NetworkError.swift
//  Lodjinha
//
//  Created by Lázaro Lima dos Santos on 09/08/18.
//

enum NetworkError: Error {
    case mapping
    case weakConnection
    case offline
    case other(Error?)
    
    var localizedDescription: String {
        switch self {
        case .mapping:
            return R.string.networkError.mapping()
        case .offline:
            return R.string.networkError.offline()
        default:
            return R.string.networkError.other()
        }
    }
    
    var rawValue: Int {
        switch self {
        case .mapping:
            return 1
        case .offline:
            return 2
        default:
            return 3
        }
    }
}
