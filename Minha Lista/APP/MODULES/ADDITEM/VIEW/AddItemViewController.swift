//
//  AddItemViewController.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 14/06/21.
//

import UIKit

class AddItemViewController: UIViewController {
    
    weak var presentor: AddItemViewToPresenterProtocol?
    weak var router: AddItemPresenterToRouterProtocol?
    
    let targetView =  AddItemView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.view = targetView
        // Do any additional setup after loading the view.
    }
}
extension AddItemViewController: AddItemPresenterToViewProtocol{
    func getList(itemList: ItemList) {
        //TO REMOVE
    }
    
    
}

extension AddItemViewController: ItemViewDelegate{
    func addItem(listName: String, itemName: String) {
       // presentor?
    }
    
    func closePopup() {
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
