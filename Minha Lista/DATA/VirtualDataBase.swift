//
//  VirtualDataBase.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 21/05/21.
//

import Foundation

class VirtualDataBase: NSObject {
    private var List = [ItemList]()
    
    //MARK: - Item List Methods
    
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
    
    public func ListExists(ListName: String) -> Bool{
        for item in List{
            if(item.getListName() == ListName){
                return true
            }
        }
        return false
    }
    
    //MARK: - Item Methods
    
    public func insertItemInList(ListName: String, item : Item){
        
        List.first(where: {$0.getListName() == ListName})?.AddItem(Item: item)

    }
    
    public func getItemInList(ListName: String, ItemName: String) -> Item{
        guard  let  itemInList = List.first(where: {$0.getListName() == ListName})?.getItem(ItemName: ItemName) else {
            return Item(ItemName: "0")}
        return itemInList
    }
    
    public func getItemsInListCount(ListName: String) -> Int{
        
        guard let itensInList =  List.first(where: {$0.getListName() == ListName})?.getList().count else { return 0 }
        return itensInList
    }
    
    public func checkItemInList(ListName: String, ItemName: String){
        
    }
    
}
