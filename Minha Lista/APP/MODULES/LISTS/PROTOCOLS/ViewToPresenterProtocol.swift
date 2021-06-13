//
//  ViewToPresenterProtocol.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 31/05/21.
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
