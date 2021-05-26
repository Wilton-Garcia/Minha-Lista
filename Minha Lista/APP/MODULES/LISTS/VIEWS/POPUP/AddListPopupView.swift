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
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let labelListName: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private func setupContentView(){
        self.addSubview(contentView)
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: topAnchor, constant: -100),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -100),
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 100),
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -100),
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
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
 
