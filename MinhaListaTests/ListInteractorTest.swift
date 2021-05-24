//
//  MinhaListaTests.swift
//  MinhaListaTests
//
//  Created by Wilton Garcia on 23/05/21.
//

import XCTest

@testable import Minha_Lista

class ListInteractorTest: XCTestCase {
    
    private let listName = "Lista de Compras"
    
    func testShouldCreateList(){
        let li = ListInteractor()
        li.createList(listName: listName)
        XCTAssertTrue(li.listNameExist(listName: listName))
    }
    
    func testListNameShoulHave3OrMoreChars(){
        let li = ListInteractor()
        XCTAssertTrue(li.listNameHas3orMoreChars(listName: "Lista de Compras"))
        XCTAssertTrue(li.listNameHas3orMoreChars(listName: "EPA"))
        XCTAssertFalse(li.listNameHas3orMoreChars(listName: "BH"))
    }
    
    func testListNameShouldNotExist(){
        let li = ListInteractor()
        li.createList(listName: listName)
        XCTAssertTrue(li.listNameExist(listName: listName ))
        XCTAssertFalse(li.listNameExist(listName: "Lista de tarefas"))
    }
    
    func testValidadeListName() {
        let li = ListInteractor()
        XCTAssertTrue(li.validateListName(listName: listName))
    }
    
    func testGetList(){
        let li = ListInteractor()
        li.createList(listName: listName)
        let list = li.getList(listName: listName)
        XCTAssertEqual(listName, list.getListName())
    }
    
    func testGetListCount(){
        let li = ListInteractor()
        li.createList(listName: listName)
        XCTAssertEqual(1, li.getListsCount())
    }
    
    func testGetAllLists(){
        let li = ListInteractor()
        li.createList(listName: "Lista 1")
        li.createList(listName: "Lista 2")
        XCTAssertEqual(2, li.getListsCount())
        XCTAssertEqual("Lista 1", li.getList(listName: "Lista 1").getListName())
        XCTAssertEqual("Lista 2", li.getList(listName: "Lista 2").getListName())
    }
    
}
