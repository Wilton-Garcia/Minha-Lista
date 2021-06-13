//
//  ItemListRouter.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 12/06/21.
//

import Foundation
import UIKit

class ItemListRouter: PresenterToRouterProtocol {
    static func createMyListViewController() -> MyListsViewController {
        let view = MyListsViewController()
        
        let presenter: ItemListViewToPresenterProtocol & ItemListInteractorToPresenterProtocol = ItemListPresenter()
        let interactor: ItemListPresenterToInteractorProtocol = ItemListListInteractor()
        let router: ItemListPresenterToRouterProtocol = ItemListListRouter()
        
        view.presentor = presenter
 
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter

        return view
    }
    
    
    
    
    func showPopupCreateList(navigationController: UINavigationController) {
        let viewAdd = AddListRouter.createAddListModule()
        navigationController.present(viewAdd, animated: true, completion: nil)
    }
    
    
}
