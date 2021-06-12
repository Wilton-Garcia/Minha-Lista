//
//  ItemList.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 18/05/21.
//

import Foundation

class ItemList : NSObject{
    private let ListName: String
    private var ItemList = [Item]()
    
    public func getListName() -> String{
        return ListName
    }
    
    public func AddItem(Item: Item){
        ItemList.append(Item)
    }
    
    public func getList() -> [Item]{
        return ItemList
    }
    
    public func getItem(ItemName: String) -> Item{
        guard let item = ItemList.first(where: {$0.getItemName() == ItemName}) else {
            return Item(ItemName: "0")
        }
        return item
    }
    
    init(ListName: String) {
        self.ListName = ListName
    }
}
