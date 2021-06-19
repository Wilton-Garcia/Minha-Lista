//
//  AddItemPresenter.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 15/06/21.
//

import Foundation
import UIKit

class AddItemPresenter: AddItemViewToPresenterProtocol{
    
    var view: AddItemPresenterToViewProtocol?
    
    var interactor: AddItemPresenterToInteractorProtocol?
    
    var router: AddItemPresenterToRouterProtocol?
    
    func addItem(listName: String, itemName: String) {
        interactor?.AddItem(listName: listName, itemName: itemName)
    }
    
}
extension AddItemPresenter: AddItemInteractorToPresenterProtocol{
    
}
