//
//  AddListInteractor.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 06/06/21.
//

import Foundation

class AddListInteractor{

    public func createList(listName: String){
        DataBaseAcess.DataBase.insertItemList(ItemList: ItemList(ListName: listName))
    }
    
}
