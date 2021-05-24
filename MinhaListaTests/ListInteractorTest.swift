//
//  MinhaListaTests.swift
//  MinhaListaTests
//
//  Created by Wilton Garcia on 23/05/21.
//

import XCTest

@testable import Minha_Lista

class ListInteractorTest: XCTestCase {
    
    func testShouldCreateList(){
        let li = ListInteractor()
        li.createList(listName: "Lista e Compras")
    }
    

    func testListNameShoulHave3OrMoreChars(){
        let li = ListInteractor()
        XCTAssertTrue(li.listNameHas3OrMoreChars(listName: "Lista de Compras"))
        XCTAssertTrue(li.listNameHas3OrMoreChars(listName: "EPA"))
        XCTAssertFalse(li.listNameHas3OrMoreChars(listName: "BH"))
    }
    
    func testListNameShouldNotExist(){
        let li = ListInteractor()
        let listaDeCompras = ItemList(ListName: "Lista de compras")
        li.db.insertItemList(ItemList: listaDeCompras)
        XCTAssertTrue(li.listNameExist(listName: listaDeCompras.getListName()))
        XCTAssertFalse(li.listNameExist(listName: "Lista de tarefas"))
    }
    
    func testGetList(){
        let li = ListInteractor()
        let listaDeCompras = ItemList(ListName: "Lista")
        li.db.insertItemList(ItemList: listaDeCompras)
        let listaRetornada = li.getList(listName: listaDeCompras.getListName())
        XCTAssertEqual(listaDeCompras, listaRetornada)
    }
    
}
