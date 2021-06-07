//
//  PresenterToInteractorProtocol.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 06/06/21.
//

import Foundation

protocol AddListPresenterToInteractorProtocol: AnyObject {
    
    var presenter: AddListInteractorToPresenterProtocol? {get set}
    
    func AddList(listName: String)
    
}
