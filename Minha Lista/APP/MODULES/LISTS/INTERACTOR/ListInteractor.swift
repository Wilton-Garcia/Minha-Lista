//
//  MyListsInteractor.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 21/05/21.
//

import Foundation

class ListInteractor: PresenterToInteractorProtocol {
    
    var presenter: InteractorToPresenterProtocol?
    
    
    private let db = VirtualDataBase()
    
    public func createList(listName: String){
        db.insertItemList(ItemList: ItemList(ListName: listName))
    }
    
    public func validateListName(listName: String) -> Bool{
        return (listNameHas3orMoreChars(listName: listName) && !listNameExist(listName: listName))
    }
    
    public func listNameHas3orMoreChars(listName: String) -> Bool{
        listName.count >= 3 ? true : false
    }
    
    public func listNameExist(listName: String) -> Bool{
        return db.ListExists(ListName: listName)
    }
    
    public func getList(listName: String) -> ItemList{
       return db.getItemListByName(ListName: listName)
    }
    
    public func getListsCount() -> Int{
        return db.getItemListCout()
    }
    
    public func populateDB(){
        
    }
    
    public func getLists(){
        self.createList(listName: "Supermercado")
        self.createList(listName: "Sacolão")
        let lists = db.getAllItemList()
        self.presenter?.listLoadedWitchSucess(itemList: lists)
    }
}
