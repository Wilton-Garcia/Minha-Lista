//
//  PresenterToRouterProtocol.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 31/05/21.
//

import Foundation
import UIKit

protocol PresenterToRouterProtocol: AnyObject {
    
    static func createMyListViewController() -> MyListsViewController
    
    func showPopupCreateList(navigationController: UINavigationController)
    
    func openList(navigationController: UINavigationController, listName: String)
}
