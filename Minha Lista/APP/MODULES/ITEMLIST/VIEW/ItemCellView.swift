//
//  ItemListCell.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 13/06/21.
//

import UIKit

class ItemCellView: UITableViewCell {
    //MARK: - Private properties
    
    private let viewCellContent: UIView = {
       let uiView = UIView()
        uiView.backgroundColor = .systemGray6
        uiView.translatesAutoresizingMaskIntoConstraints = false
        uiView.layer.cornerRadius = 10
       return uiView
    }()
    
    private let labelItemName: UILabel = {
        let labelListName = UILabel()
        labelListName.translatesAutoresizingMaskIntoConstraints = false
        return labelListName
    }()
    
    private let labelListItensCount: UILabel = {
        let labelListItensCount = UILabel()
        labelListItensCount.text = "04/10"
        labelListItensCount.translatesAutoresizingMaskIntoConstraints = false
        return labelListItensCount
    }()
    
    //MARK: - Private methods
    
    private func setpupViewCellContent(){
        
        self.addSubview(viewCellContent)
        
        NSLayoutConstraint.activate([
            viewCellContent.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            viewCellContent.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            viewCellContent.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            viewCellContent.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10)
        ])
        
    }
    
    private func setupLabelListName(){
        
        viewCellContent.addSubview(labelItemName)
        
        NSLayoutConstraint.activate([
            labelItemName.topAnchor.constraint(equalTo: viewCellContent.topAnchor, constant: 10),
            labelItemName.trailingAnchor.constraint(equalTo: viewCellContent.trailingAnchor, constant: -10),
            labelItemName.leadingAnchor.constraint(equalTo: viewCellContent.leadingAnchor, constant: 10)
        ])
    }
//    private func setuplabelListItensCount(){
//
//        viewCellContent.addSubview(labelListItensCount)
//
//        NSLayoutConstraint.activate([
//            labelListItensCount.trailingAnchor.constraint(equalTo: viewCellContent.trailingAnchor, constant: -10),
//            labelListItensCount.leadingAnchor.constraint(equalTo: viewCellContent.leadingAnchor, constant: 10),
//            labelListItensCount.bottomAnchor.constraint(equalTo: viewCellContent.bottomAnchor, constant: -10)
//        ])
//    }
    
    //MARK: - Public Methods
    
    public func fillCell(item: Item){
        labelItemName.text = item.getItemName()
    }
    
    //MARK: - Init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: "itemCell")
  
        setpupViewCellContent()
        setupLabelListName()
       // setuplabelListItensCount()
        
        self.backgroundColor = .clear
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


}