//
//  ListCell.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 19/05/21.
//

import UIKit

class  ListCell: UITableViewCell {
    
    //MARK: - Private properties
    
    private let labelListName: UILabel = {
        let labelListName = UILabel()
        labelListName.text = "TEST"
        labelListName.translatesAutoresizingMaskIntoConstraints = false
        return labelListName
    }()
    
    private let labelListItensCount: UILabel = {
        let labelListItensCount = UILabel()
        labelListItensCount.text = "01/10"
        labelListItensCount.translatesAutoresizingMaskIntoConstraints = false
        return labelListItensCount
    }()
    
    //MARK: - Private methods
    
    private func setupLabelListName(){
        
        self.addSubview(labelListName)
        
        NSLayoutConstraint.activate([
            labelListName.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            labelListName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            labelListName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 5)
        
        ])
    }
    private func setuplabelListItensCount(){
        
        self.addSubview(labelListItensCount)
        
        NSLayoutConstraint.activate([
            labelListItensCount.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            labelListItensCount.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 5),
            labelListItensCount.topAnchor.constraint(equalTo: bottomAnchor, constant: 5),
        
        ])
    }
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: "listCell")
        setupLabelListName()
        setuplabelListItensCount()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
