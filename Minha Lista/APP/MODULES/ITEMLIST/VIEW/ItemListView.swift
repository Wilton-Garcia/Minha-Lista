//
//  ItemListView.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 08/06/21.
//

import UIKit

class ItemListView: UIView {

    var data: ItemList!
    weak var delegate: ItemListViewDelegate?
    
    
    private let listNameUiLabel: UILabel = {
       let label = UILabel()
        label.text = "Nome da Lista"
        label.translatesAutoresizingMaskIntoConstraints = false
       return label
    }()
    
    private let itemListTableView: UITableView = {
       let tableView = UITableView()
       // tableView.allowsSelection = false
        tableView.backgroundColor = .clear
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
        
        itemListTableView.register(ItemCellView.self, forCellReuseIdentifier: "itemCell")
        
        NSLayoutConstraint.activate([
            itemListTableView.topAnchor.constraint(equalTo: listNameUiLabel.bottomAnchor, constant: 20),
            itemListTableView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            itemListTableView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            itemListTableView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20)
        ])
    }
    
    @objc private func reloadTable(notification: Notification){
        
        itemListTableView.reloadData()
        
    }
    
    convenience init() {
            self.init(frame:.zero)
            setupView()
        itemListTableView.delegate = self
        itemListTableView.dataSource = self
        backgroundColor = .white
        NotificationCenter.default.addObserver(self, selector: #selector(self.reloadTable(notification:)), name: Notification.Name("DataBaseUpdate"), object: nil)
    }
    
    
}

extension ItemListView: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
}
extension ItemListView: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.getList().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = itemListTableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath) as! ItemCellView
        let data = data.getList()
        let item = data[indexPath.row]
        cell.fillCell(item: item, itemListViewDelegate: delegate)
        cell.isUserInteractionEnabled = false
        itemListTableView.separatorStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Hello")
    }
}
