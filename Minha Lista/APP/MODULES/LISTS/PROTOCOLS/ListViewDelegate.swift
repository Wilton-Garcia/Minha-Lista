//
//  ListViewDelegate.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 31/05/21.
//

import Foundation

protocol ListViewDeletegate: AnyObject {
    func openPopup()
    func closePopup()
    func openList()
}
