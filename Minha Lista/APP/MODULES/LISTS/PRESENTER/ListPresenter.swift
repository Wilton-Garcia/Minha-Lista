//
//  ListPresenter.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 30/05/21.
//

import Foundation
import UIKit

class ListPresenter {
    weak var view: PresenterToViewProtocol?
    
    weak var interactor: PresenterToInteractorProtocol?
    
    weak var router: PresenterToRouterProtocol?
    
    func loadList(listName: String){
        interactor?.getLists()
    }
    
    func showListItemsViewController(navigationController: UINavigationController) {
        router?.showListItemsViewController(navigationController: navigationController)
    }
}

extension ListPresenter: InteractorToPresenterProtcol{
    func listLoadedWitchSucess(itemList: [ItemList]) {
        view?.showList(itemList: itemList)
    }
    
    
}
