//
//  TableDataSource.swift
//  Lodjinha
//
//  Created by Lázaro Lima dos Santos on 09/08/18.
//

import UIKit

class TableDataSource<Cell: UITableViewCell, Item>: NSObject, UITableViewDataSource where Cell: ViewCellHandler, Item == Cell.Item {
    
    let items: [Item]
    
    init(items: [Item]) {
        self.items = items
        
        super.init()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cell.identifier, for: indexPath) as? Cell else {
            fatalError("Cell identifier \(Cell.identifier) not found")
        }
        
        cell.setData(items[indexPath.row])
        
        return cell
    }
    
}
