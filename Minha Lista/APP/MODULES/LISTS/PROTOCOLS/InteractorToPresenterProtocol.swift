//
//  InteractorToPresenterProtocol.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 31/05/21.
//

import Foundation

protocol InteractorToPresenterProtocol: AnyObject{
    func listLoadedWitchSucess(itemList: [ItemList])
}
