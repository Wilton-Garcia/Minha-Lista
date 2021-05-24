//
//  VirtualDataBase.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 21/05/21.
//

import Foundation

class VirtualDataBase: NSObject {
    private var List = [ItemList]()
    
    public func getAllItemList() -> [ItemList]{
        return List
    }
    
    public func getItemListCout() -> Int{
        return List.count
    }
    
    public func insertItemList(ItemList: ItemList){
        List.append(ItemList)
    }
    
    public func getItemListByName(ListName: String) -> ItemList{
        
        for item in List{
            if(item.getListName() == ListName){
                return item
            }
        }
        return ItemList(ListName: "0")
    }
    
    public func itemExists(ListName: String) -> Bool{
        for item in List{
            if(item.getListName() == ListName){
                return true
            }
        }
        return false
    }
    
}
