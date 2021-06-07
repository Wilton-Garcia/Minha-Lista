//
//  ViewToPresenterProtocol.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 06/06/21.
//

import Foundation

protocol AddListViewToPresenterProtocol: AnyObject {
    var view: AddListPresenterToViewProtocol? {get set}
    var interactor: AddListPresenterToInteractorProtocol? {get set}
    var router: AddListPresenterToRouterProtocol? {get set}
    
}
