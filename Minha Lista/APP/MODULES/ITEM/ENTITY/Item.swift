//
//  Item.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 18/05/21.
//

import Foundation

class Item{
    private let ItemName: String
    private var ItemCheck: Bool
    
    public func checkUncheckItem(){
        ItemCheck = !ItemCheck
    }
    
    public func getItemName() -> String{
        return ItemName
    }
    public func getItemCheck() -> Bool{
        return ItemCheck
    }
    
    init(ItemName: String) {
        self.ItemName = ItemName
        ItemCheck = false
    }
}
