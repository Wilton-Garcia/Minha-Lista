//
//  AddItemInteractor.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 15/06/21.
//

import Foundation

class AddItemInteractor:  AddItemPresenterToInteractorProtocol{
  
    var presenter: AddItemInteractorToPresenterProtocol?
    
    func AddItem(itemName: String) {
        let item = Item(ItemName: itemName)
        DataBaseAcess.DataBase.insertItemInList(ListName: "", item: item)
    }

}
