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
        labelListName.backgroundColor = .blue
        labelListName.translatesAutoresizingMaskIntoConstraints = false
        return labelListName
    }()
    
    private let switchItemDone: UISwitch = {
       let uiSwitch = UISwitch()
        uiSwitch.setOn(true, animated: true)
        uiSwitch.translatesAutoresizingMaskIntoConstraints = false
        return uiSwitch
    }()
    //MARK: - Private methods
    
    private func setpupViewCellContent(){
        
        self.addSubview(viewCellContent)
        
        NSLayoutConstraint.activate([
            viewCellContent.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            viewCellContent.trailingAnchor.constraint(equalTo:  trailingAnchor, constant: -10),
            viewCellContent.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            viewCellContent.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10)
        ])
        
    }
    
    private func setupLabelListName(){
        
        viewCellContent.addSubview(labelItemName)
        
        NSLayoutConstraint.activate([
            labelItemName.topAnchor.constraint(equalTo: viewCellContent.topAnchor, constant: 10),
            labelItemName.trailingAnchor.constraint(equalTo: switchItemDone.leadingAnchor, constant: -10),
            labelItemName.leadingAnchor.constraint(equalTo: viewCellContent.leadingAnchor, constant: 10)
        ])
    }
    
    private func setupSwitchItemDone(){
        viewCellContent.addSubview(switchItemDone)
        
        NSLayoutConstraint.activate([
            switchItemDone.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            switchItemDone.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
    }
    
    //MARK: - Public Methods
    
    public func fillCell(item: Item){
        labelItemName.text = item.getItemName()
    }
    
    //MARK: - Init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: "itemCell")
        
     
        setpupViewCellContent()
        setupSwitchItemDone()
        setupLabelListName()

        self.contentView.isUserInteractionEnabled = false
        
        self.backgroundColor = .orange
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
