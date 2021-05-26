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
        XCTAssertTrue(vdb.ListExists(ListName: listaDeCompras.getListName()))
        XCTAssertFalse(vdb.ListExists(ListName: "Lista que não existe"))
    }
    
    func testShouldInsertItemInList(){
           let vdb = VirtualDataBase()
           let listaDeCompras = ItemList(ListName: "Lista de Compras")
           vdb.insertItemList(ItemList: listaDeCompras)
           let biscoitoRecheado = Item(ItemName: "Biscoito Recheado")
           vdb.insertItemInList(ListName: listaDeCompras.getListName(), item: biscoitoRecheado)
           let itensInList = vdb.getItemListByName(ListName: listaDeCompras.getListName()).getList().count
        XCTAssertEqual(1, itensInList)
    }
    
    func testShouldRetunrItensInListCount(){
        let vdb = VirtualDataBase()
        let listaDeCompras = ItemList(ListName: "Lista de Compras")
        let pacoteDeArroz = Item(ItemName: "Pacote de Arroz 5 KG")
        vdb.insertItemList(ItemList: listaDeCompras)
        vdb.insertItemInList(ListName: listaDeCompras.getListName(), item: pacoteDeArroz)
        XCTAssertEqual(1,vdb.getItemsInListCount(ListName: listaDeCompras.getListName()) )
      
    }

    
    func testShouldReturnItem(){
        let vdb = VirtualDataBase()
        let listaDeCompras = ItemList(ListName: "Lista de Compras")
        let pacoteDeArroz = Item(ItemName: "Pacote de Arroz 5 KG")
        vdb.insertItemList(ItemList: listaDeCompras)
        vdb.insertItemInList(ListName: listaDeCompras.getListName(), item: pacoteDeArroz)
        let nomeItemRetornado = vdb.getItemInList(ListName: listaDeCompras.getListName() , ItemName: pacoteDeArroz.getItemName()).getItemName()
        XCTAssertEqual(pacoteDeArroz.getItemName(), nomeItemRetornado)
     }

       
    
    
    func testShouldCheckAndUncheckAnItem(){
        let vdb = VirtualDataBase()
        let listaDeCompras = ItemList(ListName: "Lista de Compras")
        let pacoteDeArroz = Item(ItemName: "Pacote de Arroz 5 KG")
        vdb.insertItemList(ItemList: listaDeCompras)
        vdb.insertItemInList(ListName: listaDeCompras.getListName(), item: pacoteDeArroz)
        vdb.checkItemInList(ListName: listaDeCompras.getListName(), ItemName: pacoteDeArroz.getItemName())
     //   vdb.getItemListByName(ListName: listaDeCompras).getList().
    }
    
    
}
