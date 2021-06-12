//
//  ItemListView.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 18/05/21.
//

import UIKit

class MyListsView : UIView{
    
    //MARK: - Private properties
    
    public var data = [ItemList]()
    weak var delegate: ListViewDeletegate?
    
    private let tableViewMyLists: UITableView = {
        let myLists = UITableView()
        myLists.backgroundColor = .clear
        myLists.allowsSelection = false
        myLists.translatesAutoresizingMaskIntoConstraints = false
        return myLists
    }()
    
    //MARK: - Private methods
    
    private func setupMyListTableView(){
        self.addSubview(tableViewMyLists)
        
        tableViewMyLists.register(ListCellView.self, forCellReuseIdentifier: "listCell")
        
        NSLayoutConstraint.activate([
            tableViewMyLists.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 80),
            tableViewMyLists.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            tableViewMyLists.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            tableViewMyLists.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10)
        ])
    }
    
    private func setupLayout(){
        backgroundColor = .white
        setupMyListTableView()
    }
    
    @objc private func reloadTable(notification: Notification){
        delegate?.loadData()
        tableViewMyLists.reloadData()
    }
    
    
     
    //MARK: - Init
    
    convenience init() {
            self.init(frame:.zero)
            delegate?.loadData()
            tableViewMyLists.delegate = self
            tableViewMyLists.dataSource = self
            setupLayout()
            NotificationCenter.default.addObserver(self, selector: #selector(self.reloadTable(notification:)), name: Notification.Name("DataBaseUpdate"), object: nil)

        
        }
    }

    //MARK: - Extensions

extension  MyListsView : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewMyLists.dequeueReusableCell(withIdentifier: "listCell", for: indexPath) as! ListCellView
        let itemList = data[indexPath.row]
        cell.fillCell(itemList: itemList)
        addExtaLayoutConfigsToTableView()
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.openList()
    }
    
    private func addExtaLayoutConfigsToTableView(){
        tableViewMyLists.separatorStyle = UITableViewCell.SeparatorStyle.none
        tableViewMyLists.backgroundColor = .none
    }
    
    
}

extension MyListsView: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
}
