//
//  AddListPopupView.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 26/05/21.
//

import UIKit

class AddListaPopupView: UIView{
    
    private let contentView: UIView = {
       let view = UIView()
        view.backgroundColor = .orange
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let labelListName: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.text = "Digite um nome para lista"
        label.textColor = .cyan
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private func setupContentView(){
        self.addSubview(contentView)
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: topAnchor, constant: 300),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -300),
        ])
    }
    
    private func setupLabelListName(){
        contentView.addSubview(labelListName)
        NSLayoutConstraint.activate([
            labelListName.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            labelListName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            labelListName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10)
        ])
    }
    
    private func setupLayout(){
        setupContentView()
        setupLabelListName()
        self.backgroundColor = .green
    }
    
    convenience init() {
        self.init(frame:.zero)
        setupLayout()
    }
}
 
