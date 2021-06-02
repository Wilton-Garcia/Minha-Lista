//
//  ListPresenter.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 30/05/21.
//

import Foundation
import UIKit

class ListPresenter: ViewToPresenterProtocol {
 
    
    var view: PresenterToViewProtocol?
    
    var interactor: PresenterToInteractorProtocol?
    
    var router: PresenterToRouterProtocol?
    
    func startGetLists() {
        interactor?.getLists()
    }
   
    func showListItemsViewController(navigationController: UINavigationController) {
        router?.showPopupCreateList(navigationController: navigationController)
    }
}

extension ListPresenter: InteractorToPresenterProtocol{
    func listLoadedWitchSucess(itemList: [ItemList]) {
        view?.getLists(itemList: itemList)
    }
}
