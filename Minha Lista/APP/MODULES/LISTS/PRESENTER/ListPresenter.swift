//
//  ListPresenter.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 30/05/21.
//

import Foundation
import UIKit

class ListPresenter: ListsViewToPresenterProtocol {
  

    var view: ListsPresenterToViewProtocol?
    
    var interactor: ListsPresenterToInteractorProtocol?
    
    var router: ListsPresenterToRouterProtocol?
    
    func startGetLists() {
        interactor?.getLists()
    }
   
    func showListItemsViewController(navigationController: UINavigationController) {
        router?.showPopupCreateList(navigationController: navigationController)
    }
    
    func openList(navigationController: UINavigationController, listName: String) {
        router?.openList(navigationController: navigationController, listName: listName)
    }
    
}

extension ListPresenter: ListsInteractorToPresenterProtocol{
    func listLoadedWitchSucess(itemList: [ItemList]) {
        view?.getLists(itemList: itemList)
    }
}
