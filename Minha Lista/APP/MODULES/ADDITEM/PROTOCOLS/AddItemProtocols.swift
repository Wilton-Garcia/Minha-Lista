//
//  AddItemProtocols.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 14/06/21.
//

import Foundation
import UIKit

protocol AddItemViewToPresenterProtocol: AnyObject {
    
    var view: ItemListPresenterToViewProtocol? {get set}
    var interactor: ItemListPresenterToInteractorProtocol? {get set}
    var router: ItemListPresenterToRouterProtocol? {get set}
    
    func startLoadItemList(listName: String)
    
    func showListItemsViewController(navigationController: UINavigationController)
    
}

protocol  AddItemListPresenterToViewProtocol: AnyObject {
    func getList(itemList: ItemList)
}

protocol AddItemPresenterToRouterProtocol: AnyObject {
    
    static func createItemListViewController(itemListName: String) -> ItemListViewController
    

    
}

protocol AddItemListPresenterToInteractorProtocol: AnyObject {
    
    var presenter: ItemListInteractorToPresenterProtocol? {get set}
    
    func getList(listName: String)
}

protocol AddItemListInteractorToPresenterProtocol: AnyObject{
    
    func ItemLoadedWitchSucess(itemList: ItemList)
    
}
