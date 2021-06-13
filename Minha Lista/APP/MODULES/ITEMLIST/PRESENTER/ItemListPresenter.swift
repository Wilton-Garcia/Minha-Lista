//
//  ItemListPresenter.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 12/06/21.
//

import Foundation
import UIKit

class ItemListPresenter: ItemListViewToPresenterProtocol{
    var view: ItemListPresenterToViewProtocol?
    
    var interactor: ItemListPresenterToInteractorProtocol?
    
    var router: ItemListPresenterToRouterProtocol?
    
    func startGetLists() {
        //TODO
    }
    
    func showListItemsViewController(navigationController: UINavigationController) {
       //TODO
    }
    
    
}

extension ItemListPresenter: ItemListInteractorToPresenterProtocol{
    func ItemListlistLoadedWitchSucess(itemList: [ItemList]) {
        //TODO
    }
    
    func listLoadedWitchSucess(itemList: [ItemList]) {
        //TODO
    }
    
    
}
