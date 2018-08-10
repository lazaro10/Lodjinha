//
//  ProductTableViewCell.swift
//  Lodjinha
//
//  Created by Lázaro Lima dos Santos on 10/08/18.
//

import UIKit

class ProductTableViewCell: UITableViewCell {
    
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var titleProductLabel: UILabel!
    @IBOutlet weak var productPriceFromLabel: UILabel!
    @IBOutlet weak var productPriceToLabel: UILabel!
    
    override func awakeFromNib() {
        productImageView.kf.indicatorType = .activity
        super.awakeFromNib()
    }
    
    override func prepareForReuse() {
        productImageView.kf.cancelDownloadTask()
        super.prepareForReuse()
    }
}

extension ProductTableViewCell: ViewCellHandler {
    func setData(_ data: ProductViewModel) {
        productImageView.kf.setImage(with: data.urlImage)
        titleProductLabel.text = data.name
        productPriceFromLabel.attributedText = data.priceFrom
        productPriceToLabel.text = data.priceTo
    }
}
