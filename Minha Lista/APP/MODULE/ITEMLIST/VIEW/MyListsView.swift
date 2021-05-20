//
//  ItemListView.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 18/05/21.
//

import UIKit

class MyListsView : UIView{
    
    //MARK: - Propriedades
    
    private let labelListName: UILabel = {
        let labelListName = UILabel()
        labelListName.text = "Minhas listas"
        labelListName.translatesAutoresizingMaskIntoConstraints = false
        return labelListName
    }();
    
    
    //MARK: - Métodos
    private func setupLogoText() {
            self.addSubview(labelListName)
            
            NSLayoutConstraint.activate([
                labelListName.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 25),
                labelListName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
                labelListName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 10)
            ])
        }
    
    private func setupLayout(){
        backgroundColor = .systemBlue
        setupLogoText()
    }
    
    
    //MARK: - Init
        convenience init() {
            self.init(frame:.zero)
            
           setupLayout()
        }
}
