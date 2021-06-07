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
    

}

extension AddListPresenter: AddListInteractorToPresenterProtocol{
    
}
