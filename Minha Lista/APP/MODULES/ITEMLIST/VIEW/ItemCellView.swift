//
//  ItemListCell.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 13/06/21.
//

import UIKit

class ItemCellView: UITableViewCell {
    //MARK: - Private properties
    
    public var delegate: ItemListViewDelegate?
    
    private var item: Item?
    
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
    
    private let buttonDimiss: UIButton = {
        let button = UIButton()
        button.setTitle("check", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(checkItem), for: .touchUpInside)
        button.backgroundColor = .orange
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let switchItemDone: UISwitch = {
       let uiSwitch = UISwitch()
        uiSwitch.addTarget(self, action: #selector(checkItem), for: .allTouchEvents)
        uiSwitch.translatesAutoresizingMaskIntoConstraints = false
        return uiSwitch
    }()
    //MARK: - Private methods
    
    private func setpupViewCellContent(){
        
        self.contentView.addSubview(viewCellContent)
        
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
            labelItemName.trailingAnchor.constraint(equalTo: buttonDimiss.leadingAnchor, constant: -10),
            labelItemName.leadingAnchor.constraint(equalTo: viewCellContent.leadingAnchor, constant: 10)
        ])
    }
    
    private func setupSwitchItemDone(){
        viewCellContent.addSubview(buttonDimiss)
        
        NSLayoutConstraint.activate([
            buttonDimiss.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            buttonDimiss.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
    }
    
    @objc private func checkItem(){
        print("Hello World")
       // delegate?.checkItem(itemName: item!.getItemName())
    }
    
    //MARK: - Public Methods
    
    public func fillCell(item: Item, itemListViewDelegate: ItemListViewDelegate?){
        self.item = item
        delegate = itemListViewDelegate
        labelItemName.text = item.getItemName()
        switchItemDone.isOn = item.getItemCheck()
    }
    
    //MARK: - Init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: "itemCell")
        
      
        setpupViewCellContent()
        setupSwitchItemDone()
        setupLabelListName()
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
