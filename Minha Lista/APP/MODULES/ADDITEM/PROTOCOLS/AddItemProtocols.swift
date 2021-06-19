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
    
    func addItem(listName: String, itemName: String)
    
}

protocol  AddItemPresenterToViewProtocol: AnyObject {
    
    func getList(itemList: ItemList)
    
}

protocol AddItemPresenterToRouterProtocol: AnyObject {
    
    static func createAddItemViewController() -> AddItemViewController
}

protocol AddItemPresenterToInteractorProtocol: AnyObject {
    
    var presenter: AddItemInteractorToPresenterProtocol? {get set}
    
    func AddItem(listName: String, itemName: String)

}

protocol AddItemInteractorToPresenterProtocol: AnyObject{
    
}
