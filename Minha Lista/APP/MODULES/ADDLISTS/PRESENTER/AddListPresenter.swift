//
//  AddListPresenter.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 06/06/21.
//

import Foundation
import UIKit

class AddListPresenter: AddListViewToPresenterProtocol{

    
    var view: AddListPresenterToViewProtocol?
    
    var interactor: AddListPresenterToInteractorProtocol?
    
    var router: AddListPresenterToRouterProtocol?
    
    func closeAddListItemsViewController(navigationController: UINavigationController) {
        router?.closeAddListItemsViewController(navigationController: navigationController)
    }

}

extension AddListPresenter: AddListInteractorToPresenterProtocol{
    
}
