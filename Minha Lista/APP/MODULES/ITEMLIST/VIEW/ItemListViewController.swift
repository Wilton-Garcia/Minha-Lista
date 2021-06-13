//
//  ItemListViewController.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 12/06/21.
//

import Foundation
import UIKit

class ItemListViewController: UIViewController{
    
    weak var presentor: ItemListViewToPresenterProtocol?
    weak var router: ItemListPresenterToRouterProtocol?
    
    let targetView = ItemListView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = targetView
    }
}

extension ItemListViewController: ItemListPresenterToViewProtocol{
    func getLists(itemList: [ItemList]) {
        //
    }
    
    
}
