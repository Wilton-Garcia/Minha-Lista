//
//  ListsProtocols.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 13/06/21.
//

import Foundation
import UIKit

protocol ViewToPresenterProtocol: AnyObject {
    var view: PresenterToViewProtocol? {get set}
    var interactor: PresenterToInteractorProtocol? {get set}
    var router: PresenterToRouterProtocol? {get set}
    
    func startGetLists()
    
    func showListItemsViewController(navigationController: UINavigationController)
    func openList(navigationController: UINavigationController, listName: String)
    
}

protocol  PresenterToViewProtocol: AnyObject {
    func getLists(itemList: [ItemList])
}

protocol PresenterToRouterProtocol: AnyObject {
    
    static func createMyListViewController() -> MyListsViewController
    
    func showPopupCreateList(navigationController: UINavigationController)
    
    func openList(navigationController: UINavigationController, listName: String)
}

protocol InteractorToPresenterProtocol: AnyObject{
    func listLoadedWitchSucess(itemList: [ItemList])
}

protocol PresenterToInteractorProtocol: AnyObject {
    
    var presenter: InteractorToPresenterProtocol? {get set}
    
    func getLists()
}
