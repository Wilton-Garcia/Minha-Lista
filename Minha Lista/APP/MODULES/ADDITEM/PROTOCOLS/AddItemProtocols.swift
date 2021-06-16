//
//  AddItemProtocols.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 14/06/21.
//

import Foundation
import UIKit

protocol AddItemViewToPresenterProtocol: AnyObject {
    
    var view: AddItemPresenterToViewProtocol? {get set}
    var interactor: AddItemPresenterToInteractorProtocol? {get set}
    var router: AddItemPresenterToRouterProtocol? {get set}
    
    func startLoadItemList(listName: String)
    
    func showListItemsViewController(navigationController: UINavigationController)
    
}

protocol  AddItemPresenterToViewProtocol: AnyObject {
    func getList(itemList: ItemList)
}

protocol AddItemPresenterToRouterProtocol: AnyObject {
    
    static func createAddItemViewController() -> AddItemViewController
    

    
}

protocol AddItemPresenterToInteractorProtocol: AnyObject {
    
    var presenter: AddItemInteractorToPresenterProtocol? {get set}
    
    func getList(listName: String)
}

protocol AddItemInteractorToPresenterProtocol: AnyObject{
    
    func ItemLoadedWitchSucess(itemList: ItemList)
    
}
