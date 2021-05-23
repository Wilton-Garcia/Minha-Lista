//
//  ItemList.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 18/05/21.
//

import Foundation

class ItemList : NSObject{
    private let ListName: String
    private let ItemList = [Item]()
    
    public func getListName() -> String{
        return ListName
    }
    
    init(ListName: String) {
        self.ListName = ListName
    }
}
