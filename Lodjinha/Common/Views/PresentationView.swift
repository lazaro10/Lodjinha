//
//  PresentationView.swift
//  Lodjinha
//
//  Created by Lázaro Lima dos Santos on 09/08/18.
//

import UIKit

protocol PresentationView: class {
    var errorView: ErrorView! { get set }
    var loadingView: LoadingView! { get set }
    func presentLoading()
    func dismissLoading()
    func presentError(error: NetworkError)
    func setupPresentation(parentView: UIView)
}

fileprivate var errorViewKey: Int8 = 0
fileprivate var loadingViewKey: Int8 = 1

extension UIView: PresentationView { }
extension PresentationView where Self: UIView {
    
    var errorView: ErrorView! {
        get {
            return objc_getAssociatedObject(self, &errorViewKey) as! ErrorView
        }
        set {
            objc_setAssociatedObject(self, &errorViewKey, newValue, .OBJC_ASSOCIATION_RETAIN)
        }
    }
    
    var loadingView: LoadingView! {
        get {
            return objc_getAssociatedObject(self, &loadingViewKey) as? LoadingView
        }
        set {
            objc_setAssociatedObject(self, &loadingViewKey, newValue, .OBJC_ASSOCIATION_RETAIN)
        }
    }
    
    func presentLoading() {
        self.loadingView.isHidden = false
        
    }
    
    func dismissLoading() {
        self.loadingView.isHidden = true
    }
    
    func presentError(error: NetworkError) {
        dismissLoading()
        errorView.update(messageText: error.localizedDescription)
        DispatchQueue.main.async {
            self.errorView.isHidden = false
        }
    }
    
    func setupPresentation(parentView: UIView) {
        errorView = ErrorViewFactory.make(parentView: parentView)
        loadingView = LoadingViewFactory.make(parentView: parentView)
    }
    
}

