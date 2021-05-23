//
//  MinhaListaTests.swift
//  MinhaListaTests
//
//  Created by Wilton Garcia on 22/05/21.
//

import XCTest

@testable import Minha_Lista



class ListInteractorTest: XCTestCase {

    private func testListShoudCreated(){
        let mli = ListInteractor()
        mli.createList(listName: "Compras")
    }

}
