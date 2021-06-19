//
//  AddListInteractor.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 06/06/21.
//

import Foundation

class AddListInteractor: AddListPresenterToInteractorProtocol{
    
    var presenter: AddListInteractorToPresenterProtocol?
    
    public func AddList(listName: String){
        DataBaseAcess.DataBase.insertItemList(ItemList: ItemList(ListName: listName))
        NotificationCenter.default.post(name: Notification.Name("DataBaseUpdate"), object: nil)

    }
}

