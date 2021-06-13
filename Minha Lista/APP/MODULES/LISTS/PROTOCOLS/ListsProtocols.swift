//
//  ListsProtocols.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 13/06/21.
//

import Foundation
import UIKit

protocol ListsViewToPresenterProtocol: AnyObject {
    var view: ListsPresenterToViewProtocol? {get set}
    var interactor: ListsPresenterToInteractorProtocol? {get set}
    var router: ListsPresenterToRouterProtocol? {get set}
    
    func startGetLists()
    
    func showListItemsViewController(navigationController: UINavigationController)
    func openList(navigationController: UINavigationController, listName: String)
    
}

protocol  ListsPresenterToViewProtocol: AnyObject {
    func getLists(itemList: [ItemList])
}

protocol ListsPresenterToRouterProtocol: AnyObject {
    
    static func createMyListViewController() -> MyListsViewController
    
    func showPopupCreateList(navigationController: UINavigationController)
    
    func openList(navigationController: UINavigationController, listName: String)
}

protocol ListsInteractorToPresenterProtocol: AnyObject{
    func listLoadedWitchSucess(itemList: [ItemList])
}

protocol ListsPresenterToInteractorProtocol: AnyObject {
    
    var presenter: ListsInteractorToPresenterProtocol? {get set}
    
    func getLists()
}
