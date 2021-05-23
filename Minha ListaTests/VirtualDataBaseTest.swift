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
}
