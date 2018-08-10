//
//  UIView+LoadNib.swift
//  Lodjinha
//
//  Created by Lázaro Lima dos Santos on 09/08/18.
//


import UIKit

extension UIView: NibLoadableView, Identifiable { }

protocol NibLoadableView: class {
    static var defaultNibName: String { get }
}

extension NibLoadableView where Self: UIView {
    
    static var defaultNibName: String {
        return nibName
    }
    
    static var viewFromDefaultNib: Self? {
        return Bundle.main.loadNibNamed(defaultNibName, owner: nil, options: nil)?.first as? Self
    }
    
    func loadNib() {
        
        let nibName = Self.defaultNibName
        if let view = Bundle.main.loadNibNamed(nibName, owner: self, options: nil)?.first as? UIView {
            
            view.bounds = self.bounds
            addSubview(view)
            view.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate(
                [view.topAnchor.constraint(equalTo: self.topAnchor),
                 view.leadingAnchor.constraint(equalTo: self.leadingAnchor),
                 view.trailingAnchor.constraint(equalTo: self.trailingAnchor),
                 view.bottomAnchor.constraint(equalTo: self.bottomAnchor)]
            )
        }
    }
}

