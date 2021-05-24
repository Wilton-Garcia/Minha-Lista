//
//  ItemListViewController.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 18/05/21.
//

import UIKit

class MyListsViewController : UIViewController{
    private let targetView =  MyListsView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = targetView
        targetView.data = ListInteractor().getAllLists()
    }
    
}
