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
       let viewAdd = CreatePopupView()
        navigationController.present(viewAdd, animated: true, completion: nil)
    }
    
    func CreatePopupView() -> UIViewController{
        let view = AddListPopupViewController()
        
        
        
        return view
    }
    
}
