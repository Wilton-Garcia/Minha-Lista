//
//  VirtualDataBaseTest.swift
//  MinhaListaTests
//
//  Created by Wilton Garcia on 23/05/21.
//

import XCTest
@testable import Minha_Lista

class VirtualDataBaseTest: XCTestCase {

    func testShoulReturnItemListCount(){
        let vdb = VirtualDataBase()
        var listaDeCompras = ItemList(ListName: "Lista De Compras")
        vdb.insertItemList(ItemList: listaDeCompras)
        listaDeCompras = ItemList(ListName: "Lista De Compras 2")
        XCTAssertEqual(1, vdb.getItemListCout())
        vdb.insertItemList(ItemList: listaDeCompras)
        XCTAssertEqual(2, vdb.getItemListCout())
    }
    
    func testShouldInsertListInDataBase(){
           let vdb = VirtualDataBase()
           let listaDeCompras = ItemList(ListName: "Lista de Compras")
           vdb.insertItemList(ItemList: listaDeCompras)
        XCTAssertEqual(1, vdb.getItemListCout())
       }
    
    func testShouldReturnItemListyName(){
        let vdb = VirtualDataBase()
        let listaDeCompras = ItemList(ListName: "Lita de Compras")
        vdb.insertItemList(ItemList: listaDeCompras)
        let listaRetornada = vdb.getItemListByName(ListName: listaDeCompras.getListName())
        XCTAssertEqual(listaDeCompras, listaRetornada)
    }
    func testItemExistInDataBae(){
        let vdb = VirtualDataBase()
        let listaDeCompras = ItemList(ListName: "Lista de Compras")
        vdb.insertItemList(ItemList: listaDeCompras)
        XCTAssertTrue(vdb.itemExists(ListName: listaDeCompras.getListName()))
        XCTAssertFalse(vdb.itemExists(ListName: "Lista que não existe"))
    }
}
