//
//  ItemListViewController.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 18/05/21.
//

import UIKit

class ItemListViewController : UIViewController{
    private let targetView =  ItemListView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = targetView
    }
    
}
