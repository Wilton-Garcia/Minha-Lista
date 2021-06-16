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
    
    func startLoadItemList(listName: String)
    
    func showListItemsViewController(navigationController: UINavigationController)
    
}

protocol  ItemListPresenterToViewProtocol: AnyObject {
    func getList(itemList: ItemList)
}

protocol ItemListPresenterToRouterProtocol: AnyObject {
    
    static func createItemListViewController(itemListName: String) -> ItemListViewController
    
    func showPopupCreateItem(navigationController: UINavigationController)
    
}

protocol ItemListPresenterToInteractorProtocol: AnyObject {
    
    var presenter: ItemListInteractorToPresenterProtocol? {get set}
    
    func getList(listName: String)
}

protocol ItemListInteractorToPresenterProtocol: AnyObject{
    
    func ItemListlistLoadedWitchSucess(itemList: ItemList)
    
}

