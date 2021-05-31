//
//  ViewToPresenterProtocol.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 31/05/21.
//

import Foundation

protocol ViewToPresenterProtocol {
    var view: PresenterToViewProtocol? {get set}
    var interactor: PresenterToInteractorProtocol? {get set}
    var router: PresenterToRouterProtocol? {get set}
}
