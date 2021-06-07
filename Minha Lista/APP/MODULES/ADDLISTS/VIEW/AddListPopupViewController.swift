//
//  AddListPopupViewController.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 26/05/21.
//

import UIKit

class AddListPopupViewController: UIViewController {

    var presentor: ViewToPresenterProtocol?
    private let targerView = AddListaPopupView()
    
    public func dimissView(){
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = targerView
    }
}
