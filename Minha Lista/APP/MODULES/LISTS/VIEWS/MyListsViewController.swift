//
//  ItemListViewController.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 18/05/21.
//

import UIKit

class MyListsViewController : UIViewController{
    
    weak var presentor: ListsViewToPresenterProtocol?
    weak var router: ListsPresenterToRouterProtocol?
    
    lazy var targetView =  MyListsView()
    
    public var data = [ItemList]()
    private let addListopupViewController = AddListPopupViewController()
    
    private let navigationBar: UINavigationBar = {
        let navigationBar: UINavigationBar = UINavigationBar(frame: .zero)
        navigationBar.barTintColor = .orange
        navigationBar.translatesAutoresizingMaskIntoConstraints = false
        return navigationBar
    }()
    
    private func setupNavigationBar(){
        targetView.addSubview(navigationBar)
        
        NSLayoutConstraint.activate([
            navigationBar.topAnchor.constraint(equalTo: targetView.safeAreaLayoutGuide.topAnchor),
            navigationBar.heightAnchor.constraint(equalToConstant: 45),
            navigationBar.leadingAnchor.constraint(equalTo: targetView.leadingAnchor),
            navigationBar.trailingAnchor.constraint(equalTo: targetView.trailingAnchor)
        ])
        
        let navigationItem = UINavigationItem(title: "Minhas Listas")
        navigationItem.rightBarButtonItem =  UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(callPopupAddList))
        navigationBar.setItems([navigationItem], animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        targetView.delegate = self
        self.view = targetView
        presentor?.startGetLists()
    }
    
    override  func viewWillLayoutSubviews(){
        setupNavigationBar()
    }
    
    @objc func callPopupAddList(){
        openPopup()
    }
}

extension MyListsViewController:ListsPresenterToViewProtocol{
    func getLists(itemList: [ItemList]) {
        targetView.data = itemList
    }
}

extension MyListsViewController: ListViewDeletegate{
    func openList(listName: String) {
        presentor?.openList(navigationController: navigationController!, listName: listName)
    }
    
    func loadData() {
        presentor?.startGetLists()
    }
    
    func openPopup() {
        presentor?.showListItemsViewController(navigationController: navigationController!)
    }
}

protocol TargerViewAcess: AnyObject{
    func reloadTable()
}
