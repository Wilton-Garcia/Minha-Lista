//
//  ViperProtocols.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 12/06/21.
//

import Foundation
import UIKit

protocol ItemListViewToPresenterProtocol: AnyObject {
    var view: ItemListPresenterToViewProtocol? {get set}
    var interactor: ItemListPresenterToInteractorProtocol? {get set}
    var router: ItemListPresenterToRouterProtocol? {get set}
    
    func startGetLists()
    
    func showListItemsViewController(navigationController: UINavigationController)
    
    
}

protocol  ItemListPresenterToViewProtocol: AnyObject {
    func getLists(itemList: [ItemList])
}

protocol ItemListPresenterToRouterProtocol: AnyObject {
    
    static func createMyListViewController() -> ItemListViewController
    
    func showPopupCreateList(navigationController: UINavigationController)
}

protocol ItemListPresenterToInteractorProtocol: AnyObject {
    
    var presenter: ItemListInteractorToPresenterProtocol? {get set}
    
    func getLists()
}

protocol ItemListInteractorToPresenterProtocol: AnyObject{
    func ItemListlistLoadedWitchSucess(itemList: [ItemList])
}

