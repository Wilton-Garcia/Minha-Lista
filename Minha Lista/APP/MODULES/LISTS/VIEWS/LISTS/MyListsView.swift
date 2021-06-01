//
//  ItemListView.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 18/05/21.
//

import UIKit

class MyListsView : UIView{
    
    //MARK: - Private properties
    
    private let Interactor = ListInteractor()
    public var data = [ItemList]()
    
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
     
    
    //MARK: - Init
    
        convenience init() {
            self.init(frame:.zero)
            tableViewMyLists.delegate = self
            tableViewMyLists.dataSource = self
            setupLayout()
        }
    }

    //MARK: - Extensions

extension MyListsView: PresenterToViewProtocol{
    func getLists(itemList: [ItemList]) {
   //     self.data = itemList
   //     self.tableViewMyLists.reloadData()
    }
}

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