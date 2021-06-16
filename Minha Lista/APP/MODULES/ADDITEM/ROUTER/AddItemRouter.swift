//
//  AddItemRouter.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 15/06/21.
//

import Foundation
import UIKit

class AddItemRouter: AddItemPresenterToRouterProtocol{
    
    static func createAddItemViewController() -> AddItemViewController  {
        let view = AddItemViewController()
        
        let presenter: AddItemViewToPresenterProtocol & AddItemInteractorToPresenterProtocol = AddItemPresenter()
        
        let interactor: AddItemPresenterToInteractorProtocol = AddItemInteractor()
        
        let router: AddItemPresenterToRouterProtocol = AddItemRouter()
        
    
        view.presentor = presenter
        
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        return view
    }
    
    
}
