//
//  ItemListInteractor.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 12/06/21.
//

import Foundation

class ItemListInteractor: ItemListPresenterToInteractorProtocol{
    var presenter: ItemListInteractorToPresenterProtocol?
    
    func getList(listName: String) {
      let itemList = DataBaseAcess.DataBase.getItemListByName(ListName: listName)
        presenter?.ItemListlistLoadedWitchSucess(itemList: itemList)
    }
    
    
}
