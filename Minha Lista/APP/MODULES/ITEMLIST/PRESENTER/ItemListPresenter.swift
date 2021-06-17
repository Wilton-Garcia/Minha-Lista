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
    
    func startLoadItemList(listName: String) {
        interactor?.getList(listName: listName)
    }
    
    func showCreateItemViewController(navigationController: UINavigationController) {
        router?.showPopupCreateItem(navigationController: navigationController)
    }
    
    
}

extension ItemListPresenter: ItemListInteractorToPresenterProtocol{
    func ItemListlistLoadedWitchSucess(itemList: ItemList) {
        view?.getList(itemList: itemList)
    }
    
    func listLoadedWitchSucess(itemList: [ItemList]) {
        //TODO
    }
    
    
}
