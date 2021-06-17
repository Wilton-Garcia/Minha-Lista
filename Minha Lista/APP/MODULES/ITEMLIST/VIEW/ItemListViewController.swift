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
        setupNavigationBar()
    }
    
  
    
    private func setupNavigationBar(){
        print("Entrou")

        self.navigationItem .rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(callPopupAddItem))

    }
    
    @objc private func callPopupAddItem(){
        print("Entrou")
        router?.showPopupCreateItem(navigationController: navigationController!)
    }
}

extension ItemListViewController: ItemListPresenterToViewProtocol{
    func getList(itemList: ItemList) {
        targetView.data = itemList
    }
}
