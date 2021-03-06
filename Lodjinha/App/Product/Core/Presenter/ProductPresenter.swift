//
//  ProductPresenter.swift
//  Lodjinha
//
//  Created by Lázaro Lima dos Santos on 10/08/18.
//

import Foundation

final class ProductPresenter {
    
    private weak var delegate: ProductPresentation?
    private let interactor: ProductInteractor
    
    
    private var product: Product? {
        didSet {
            guard let product = product else {return}
            let productViewModel = ProductViewModel(product: product)
            self.delegate?.onProduct(product: productViewModel)        }
    }
    
    init(delegate: ProductPresentation, interactor: ProductInteractor) {
        self.delegate = delegate
        self.interactor = interactor
    }
    
    func getProduct(productId: Int) {
        interactor.fetchProduct(idProduct: productId) { (result) in
            self.delegate?.onLoading()
            switch result {
            case .success(let product):
                self.product = product
            case .fail(let error):
                self.delegate?.onError(error: error)
            }
            self.delegate?.offLoading()
        }
    }
    
    func setReserveProduct() {
        interactor.submitReserveProduct(idProduct: (product?.id)!) { (result) in
            self.delegate?.onLoading()
            switch result {
            case .success(_ ):
                self.delegate?.onReserved(message: R.string.messages.reservedSuccess(), isSuccess: true)
            case .fail(let error):
                self.delegate?.onReserved(message: error.localizedDescription, isSuccess: true)
            }
            self.delegate?.offLoading()
        }
    }
    
    
    
}
