//
//  ItemListView.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 18/05/21.
//

import UIKit

class MyListsView : UIView{
    
    //MARK: - Private properties
    
    private let labelListName: UILabel = {
        let labelListName = UILabel()
        labelListName.text = "Minhas listas"
        labelListName.translatesAutoresizingMaskIntoConstraints = false
        return labelListName
    }()
    
    private let tableViewMyLists: UITableView = {
        let myLists = UITableView()
        myLists.backgroundColor = .clear
        myLists.allowsSelection = false
        myLists.translatesAutoresizingMaskIntoConstraints = false
        return myLists
    }()
    
    //MARK: - Private methods
    private func setupLogoText() {
            self.addSubview(labelListName)
            
            NSLayoutConstraint.activate([
                labelListName.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 25),
                labelListName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
                labelListName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 10)
            ])
        }
    
    private func setupMyListTableView(){
        self.addSubview(tableViewMyLists)
        
        tableViewMyLists.register(ListCell.self, forCellReuseIdentifier: "listCell")
        
        NSLayoutConstraint.activate([
            tableViewMyLists.topAnchor.constraint(equalTo: labelListName.topAnchor, constant: 100),
            tableViewMyLists.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            tableViewMyLists.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            tableViewMyLists.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10)
        ])
        
    }
    
    private func setupLayout(){
        backgroundColor = .systemGray
        setupLogoText()
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
extension  MyListsView : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewMyLists.dequeueReusableCell(withIdentifier: "listCell", for: indexPath) as! ListCell
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
