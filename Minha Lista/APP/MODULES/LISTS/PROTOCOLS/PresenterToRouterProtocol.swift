//
//  PresenterToRouterProtocol.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 31/05/21.
//

import Foundation
import UIKit

protocol PresenterToRouterProtocol {
    
    static func createMyListViewController() -> MyListsViewController
    
    func showPopupCreateList(navigationController: UINavigationController)
}
