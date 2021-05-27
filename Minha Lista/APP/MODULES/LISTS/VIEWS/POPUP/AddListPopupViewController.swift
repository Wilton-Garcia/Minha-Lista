//
//  AddListPopupViewController.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 26/05/21.
//

import UIKit

class AddListPopupViewController: UIViewController {

    
    private let targerView = AddListaPopupView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = targerView
    }
}
