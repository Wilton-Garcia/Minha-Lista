//
//  MyListsInteractor.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 21/05/21.
//

import Foundation

class ListInteractor: NSObject {
    
    
    public func createList(listName: String){
        
    }
    
    public func validateListName(listName: String){
        
    }
    public func listNameHas3OrMoreChars(listName: String) -> Bool{
        listName.count >= 3 ? true : false
    }
    public func listNameDoNotExist(listName: String) -> Bool{
        return VirtualDataBase().itemExists(ListName: listName)
    }
    
    override init() {
            
    }
}
