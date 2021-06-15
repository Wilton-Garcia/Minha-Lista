//
//  ItemListViewController.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 12/06/21.
//

import Foundation
import UIKit

class ItemListViewController: UIViewController{
    
    var itemListName: String!
    
    weak var presentor: ItemListViewToPresenterProtocol?
    weak var router: ItemListPresenterToRouterProtocol?
    
    let targetView = ItemListView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = targetView
        presentor?.startLoadItemList(listName: itemListName)
    }
    
    private let navigationBar: UINavigationBar = {
        let navigationBar: UINavigationBar = UINavigationBar(frame: .zero)
        navigationBar.barTintColor = .orange
        navigationBar.translatesAutoresizingMaskIntoConstraints = false
        return navigationBar
    }()
    
    private func setupNavigationBar(){
        let navigationItem = UINavigationItem()
        navigationItem.rightBarButtonItem =  UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(callPopupAddItem))
        navigationBar.setItems([navigationItem], animated: false)
    }
    
    @objc private func callPopupAddItem(){
        router?.showPopupCreateItem(navigationController: navigationController!)
    }
}

extension ItemListViewController: ItemListPresenterToViewProtocol{
    func getList(itemList: ItemList) {
        targetView.data = itemList
    }
}
