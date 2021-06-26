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
        targetView.delegate = self
        self.view = targetView
        presentor?.startLoadItemList(listName: itemListName)
        setupNavigationBar()
    }
    
    private func setupNavigationBar(){

        self.navigationItem .rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(callPopupAddItem))

    }
    
    @objc private func callPopupAddItem(){
        
        presentor?.showCreateItemViewController(navigationController: navigationController!, itemListName: itemListName)
    }
    
}

extension ItemListViewController: ItemListPresenterToViewProtocol{

    func getList(itemList: ItemList) {
        targetView.data = itemList
    }
    
}

extension ItemListViewController: ItemListViewDelegate{
    
    func checkItem(itemName: String) {
        presentor?.checkItem(listName: itemListName, itemName: itemName)
    }
    
}
