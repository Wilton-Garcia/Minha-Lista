//
//  File.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 06/06/21.
//

import Foundation

class AddListRouter: AddListPresenterToRouterProtocol{
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

        print(
        "View retornada com sucesso"
        )
        
        return view
        
    }
}
