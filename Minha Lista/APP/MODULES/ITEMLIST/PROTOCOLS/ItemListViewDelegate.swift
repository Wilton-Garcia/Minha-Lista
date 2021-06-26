//
//  ItemListViewDelegate.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 19/06/21.
//

import Foundation

protocol ItemListViewDelegate: AnyObject {
    func checkItem(itemName: String)
}
