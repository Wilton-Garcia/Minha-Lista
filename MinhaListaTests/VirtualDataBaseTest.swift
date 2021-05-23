//
//  VirtualDataBaseTest.swift
//  MinhaListaTests
//
//  Created by Wilton Garcia on 23/05/21.
//

import XCTest
@testable import Minha_Lista

class VirtualDataBaseTest: XCTestCase {

    func testShouldInsertListInDataBase(){
           let vdb = VirtualDataBase()
           let listaDeCompras = ItemList(ListName: "Lista de Compras")
           vdb.insertItemList(ItemList: listaDeCompras)
           XCTAssertEqual(1, vdb.List.count)
       }
    func testShouldReturnItemListyName(){
        let vdb = VirtualDataBase()
        let listaDeCompras = ItemList(ListName: "Lita de Compras")
        vdb.insertItemList(ItemList: listaDeCompras)
        let listaRetornada = vdb.getItemByName(ListName: listaDeCompras.getListName())
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
