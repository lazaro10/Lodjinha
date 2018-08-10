//
//  CollectionDataSource.swift
//  Lodjinha
//
//  Created by Lázaro Lima dos Santos on 09/08/18.
//

import UIKit

class CollectionDataSource<Cell: UICollectionViewCell, Item>: NSObject, UICollectionViewDataSource where Cell: ViewCellHandler, Item == Cell.Item {
    
    let items: [Item]
    
    init(items: [Item]) {
        self.items = items
        
        super.init()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Cell.identifier, for: indexPath) as? Cell else {
            fatalError("Cell identifier \(Cell.identifier) not found")
        }
        cell.setData(self.items[indexPath.row])
        return cell
    }
    
}
