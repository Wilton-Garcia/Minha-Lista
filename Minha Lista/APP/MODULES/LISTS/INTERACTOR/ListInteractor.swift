//
//  MyListsInteractor.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 21/05/21.
//

import Foundation

class ListInteractor: NSObject {
    
    public let db = VirtualDataBase()
    
    public func createList(listName: String){
        
    }
    
    public func validateListName(listName: String){
        
    }
    
    public func listNameHas3OrMoreChars(listName: String) -> Bool{
        listName.count >= 3 ? true : false
    }
    
    public func listNameExist(listName: String) -> Bool{
        return db.itemExists(ListName: listName)
    }
    
    public func getList(listName: String) -> ItemList{
       return db.getItemByName(ListName: listName)
    }
    
    override init() {
            
    }
}