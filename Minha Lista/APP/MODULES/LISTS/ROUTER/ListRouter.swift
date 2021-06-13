//
//  ListRouter.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 28/05/21.
//

import Foundation
import UIKit

class ListRouter: PresenterToRouterProtocol {
    static func createMyListViewController() -> MyListsViewController {
        let view = MyListsViewController()
        
        let presenter: ViewToPresenterProtocol & InteractorToPresenterProtocol = ListPresenter()
        let interactor: PresenterToInteractorProtocol = ListInteractor()
        let router: PresenterToRouterProtocol = ListRouter()
        
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
    
    func openList(navigationController: UINavigationController, listName: String){
        print("Acessou o Router")
        let viewList = ItemListRouter.createMyListViewController()
        navigationController.modalPresentationStyle = .fullScreen
        navigationController.isNavigationBarHidden = false
        navigationController.present(viewList, animated: true, completion: nil)
    }
    
    
}
