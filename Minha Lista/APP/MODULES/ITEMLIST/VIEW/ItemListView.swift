//
//  ItemListView.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 08/06/21.
//

import UIKit

class ItemListView: UIView {

    var data: ItemList?
    
    private let listNameUiLabel: UILabel = {
       let label = UILabel()
        label.text = "Nome da Lista"
        label.translatesAutoresizingMaskIntoConstraints = false
       return label
    }()
    
    private let itemListTableView: UITableView = {
       let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    private func setupView(){
        setupListName()
        setupItemList()
    }
    
    private func setupListName(){
        self.addSubview(listNameUiLabel)
        NSLayoutConstraint.activate([
            listNameUiLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            listNameUiLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            listNameUiLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
    }
    private func setupItemList(){
        self.addSubview(itemListTableView)
        
        NSLayoutConstraint.activate([
            itemListTableView.topAnchor.constraint(equalTo: listNameUiLabel.bottomAnchor, constant: 20),
            itemListTableView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: -20),
            itemListTableView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 20),
            itemListTableView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20)
            
        ])
    }
    
    convenience init() {
            self.init(frame:.zero)
            setupView()
        backgroundColor = .orange
        
        }

}
extension ItemListView: UITableViewDelegate{
    
}
extension ItemListView: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let itemsInList =  data?.getList().count else {
            return 0
        }
        
        return itemsInList
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        return cell
    }
}
