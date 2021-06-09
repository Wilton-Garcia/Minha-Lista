//
//  ItemListView.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 08/06/21.
//

import UIKit

class ItemListView: UIView {

    private let listNameUiLabel: UILabel = {
       let label = UILabel()
        return label
    }()
    
    private let itemListTableView: UITableView = {
       let tableView = UITableView()
        return tableView
    }()
    
    private func setupView(){
        setupListName()
        setupItemList()
    }
    
    private func setupListName(){
        
    }
    private func setupItemList(){
        
    }

}
extension ItemListView: UITableViewDelegate{
    
}
extension ItemListView: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        return cell
    }
}
