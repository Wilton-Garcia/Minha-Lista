//
//  AddListPopupViewController.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 26/05/21.
//

import UIKit

class AddListPopupViewController: UIViewController {

    var presentor: AddListViewToPresenterProtocol?
    private let targerView = AddListaPopupView()
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        targerView.delegate = self
        self.view = targerView
    }
}

extension AddListPopupViewController: AddListViewDelegate{
    func closePopup() {
        presentor?.closeAddListItemsViewController(navigationController: navigationController!)
    }
    
    
}

extension AddListPopupViewController: AddListPresenterToViewProtocol{
    
}


