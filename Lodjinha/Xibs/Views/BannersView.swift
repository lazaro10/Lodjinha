//
//  BannersView.swift
//  Lodjinha
//
//  Created by Lázaro Lima dos Santos on 10/08/18.
//

import UIKit

class BannersView: UIView {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    private var dataSource: CollectionDataSource<BannerCollectionViewCell, BannerViewModel>!
    private var completion: ((_ indexCellSelected: Int) -> Void)?
    
    override func awakeFromNib() {
        loadNib()
        setupPresentation(parentView: self)
        super.awakeFromNib()
        configureCollection()
    }
    
    func setupView(banners: [BannerViewModel], completion:@escaping (_ indexCellSelected: Int) -> Void) {
        setDataSource(banners: banners)
        pageControl.numberOfPages = banners.count
        self.completion = completion
    }
    
    private func configureCollection() {
        collectionView.register(UINib(nibName: BannerCollectionViewCell.nibName, bundle: nil), forCellWithReuseIdentifier: BannerCollectionViewCell.identifier)
    }
    
    private func setDataSource(banners: [BannerViewModel]) {
        DispatchQueue.main.async {
            self.dataSource = CollectionDataSource(items: banners)
            self.collectionView.dataSource = self.dataSource
            self.collectionView.delegate = self
            self.collectionView.reloadData()
        }
    }
    
}

extension BannersView: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        completion!(indexPath.row)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: frame.size.width, height: frame.size.height)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let contentOffsetX = collectionView.contentOffset.x
        let collectionWidth = collectionView.bounds.size.width
        pageControl.currentPage = Int(ceil(contentOffsetX/collectionWidth))
    }
}
