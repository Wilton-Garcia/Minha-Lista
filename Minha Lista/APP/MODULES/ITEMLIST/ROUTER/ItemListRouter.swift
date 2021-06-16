//
//  ItemListRouter.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 12/06/21.
//

import Foundation
import UIKit

class ItemListRouter: ItemListPresenterToRouterProtocol {
  
    static func createItemListViewController(itemListName: String) -> ItemListViewController {
        let view = ItemListViewController()
        
        view.itemListName = itemListName
        
        let presenter: ItemListViewToPresenterProtocol & ItemListInteractorToPresenterProtocol = ItemListPresenter()
        let interactor: ItemListPresenterToInteractorProtocol = ItemListInteractor()
        let router: ItemListPresenterToRouterProtocol = ItemListRouter()
        
        view.presentor = presenter
 
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter

        return view
    }
    
    func showPopupCreateItem(navigationController: UINavigationController) {
        let viewAdd = AddListRouter.createAddListModule() //Chamar o add item aqui
        navigationController.present(viewAdd, animated: true, completion: nil)
    }
    
}
