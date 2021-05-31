//
//  PresenterToViewProtocol.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 31/05/21.
//

import Foundation

protocol  PresenterToViewProtocol: AnyObject {
    func showList(itemList: [ItemList])
}
