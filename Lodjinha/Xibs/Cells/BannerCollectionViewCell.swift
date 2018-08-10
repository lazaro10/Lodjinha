//
//  BannerCollectionViewCell.swift
//  Lodjinha
//
//  Created by Lázaro Lima dos Santos on 10/08/18.
//

import UIKit

class BannerCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var bannerImageView: UIImageView!
    
    override func awakeFromNib() {
        bannerImageView.kf.indicatorType = .activity
        super.awakeFromNib()
    }
    
    override func prepareForReuse() {
        bannerImageView.kf.cancelDownloadTask()
        super.prepareForReuse()
    }
}

extension BannerCollectionViewCell: ViewCellHandler {
    func setData(_ data: BannerViewModel) {
        bannerImageView.kf.setImage(with: data.urlImagem)
    }
}
