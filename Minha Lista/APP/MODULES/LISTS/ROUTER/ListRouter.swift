//
//  ListRouter.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 28/05/21.
//

import Foundation
import UIKit

class ListRouter: ListsPresenterToRouterProtocol {
    static func createMyListViewController() -> MyListsViewController {
        
        
        let view = MyListsViewController()
        
        let presenter: ListsViewToPresenterProtocol & ListsInteractorToPresenterProtocol = ListPresenter()
        let interactor: ListsPresenterToInteractorProtocol = ListInteractor()
        let router: ListsPresenterToRouterProtocol = ListRouter()
        
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
        let viewList = ItemListRouter.createItemListViewController(itemListName: listName)
        viewList.modalPresentationStyle = .fullScreen
        viewList.navigationController?.isToolbarHidden = false
        navigationController.pushViewController(viewList, animated: true)
    }
    
    
}
