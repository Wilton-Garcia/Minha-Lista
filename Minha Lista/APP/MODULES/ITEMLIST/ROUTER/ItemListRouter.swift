//
//  ItemListRouter.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 12/06/21.
//

import Foundation
import UIKit

class ItemListRouter: ItemListPresenterToRouterProtocol {
    static func createMyListViewController() -> UIViewController {
        let v = UIViewController()
        return v
    }
    
    static func createMyListViewController() -> ItemListViewController {
        let view = ItemListViewController()
        
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
    
    
    
    
    func showPopupCreateList(navigationController: UINavigationController) {
        let viewAdd = AddListRouter.createAddListModule()
        navigationController.present(viewAdd, animated: true, completion: nil)
    }
    
    
}
