//
//  File.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 06/06/21.
//

import Foundation
import UIKit

class AddListRouter: AddListPresenterToRouterProtocol{
    func closeAddListItemsViewController(navigationController: UINavigationController) {
        navigationController.dismiss(animated: true, completion: nil)
    }
    
    static func createAddListModule() -> AddListPopupViewController {
        let view = AddListPopupViewController()
        
        let presenter: AddListViewToPresenterProtocol &
            AddListInteractorToPresenterProtocol = AddListPresenter()
        let interactor: AddListPresenterToInteractorProtocol = AddListInteractor()
        let router: AddListPresenterToRouterProtocol = AddListRouter()
        
        view.presentor = presenter
 
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter

        return view
        
    }
}
