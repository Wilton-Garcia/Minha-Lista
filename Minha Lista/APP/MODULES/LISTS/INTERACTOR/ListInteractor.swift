//
//  MyListsInteractor.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 21/05/21.
//

import Foundation

class ListInteractor: ListsPresenterToInteractorProtocol {
    
    var presenter: ListsInteractorToPresenterProtocol?
    
    public func createList(listName: String){
        DataBaseAcess.DataBase.insertItemList(ItemList: ItemList(ListName: listName))
    }
    
    public func validateListName(listName: String) -> Bool{
        return (listNameHas3orMoreChars(listName: listName) && !listNameExist(listName: listName))
    }
    
    public func listNameHas3orMoreChars(listName: String) -> Bool{
        listName.count >= 3 ? true : false
    }
    
    public func listNameExist(listName: String) -> Bool{
        return DataBaseAcess.DataBase.ListExists(ListName: listName)
    }
    
    public func getList(listName: String) -> ItemList{
       return DataBaseAcess.DataBase.getItemListByName(ListName: listName)
    }
    
    public func getListsCount() -> Int{
        return DataBaseAcess.DataBase.getItemListCout()
    }
    
    public func populateDB(){
        
    }
    
    public func getLists(){
        createList(listName: "Supermercado")
        createList(listName: "Sacolão")
        let lists = DataBaseAcess.DataBase.getAllItemList()
        self.presenter?.listLoadedWitchSucess(itemList: lists)
    }
}
