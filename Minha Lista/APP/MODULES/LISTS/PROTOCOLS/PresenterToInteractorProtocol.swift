//
//  PresenterToInteractorProtocol.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 31/05/21.
//

import Foundation

protocol PresenterToInteractorProtocol: AnyObject {
    
    var presenter: InteractorToPresenterProtocol? {get set}
    
    func getLists()
}
