//
//  AddItemPresenter.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 15/06/21.
//

import Foundation
import UIKit

class AddItemPresenter: AddItemViewToPresenterProtocol{
    func addItem() {
        //TODO
    }
    
    var view: AddItemPresenterToViewProtocol?
    
    var interactor: AddItemPresenterToInteractorProtocol?
    
    var router: AddItemPresenterToRouterProtocol?
    
}
extension AddItemPresenter: AddItemInteractorToPresenterProtocol{
    
    func ItemLoadedWitchSucess(itemList: ItemList) {
        
    }
    
}
