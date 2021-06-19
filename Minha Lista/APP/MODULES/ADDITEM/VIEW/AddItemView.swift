//
//  AddItemView.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 14/06/21.
//

import UIKit

class AddItemView: UIView {
    //MARK: - Private properties
    
    public weak var delegate: ItemViewDelegate?
    
    private var clique = 0;
    
    //MARK: - View Properties
    
    private let contentView: UIView = {
       let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let labelItemName: UILabel = {
        let label = UILabel()
        label.text = "Digite um nome do item"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let textFieldItemtName: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Lista de ..."
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()

    private let buttonCreateItem: UIButton = {
        let button = UIButton()
        button.setTitle("Cadastrar", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(addItem), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let buttonDimiss: UIButton = {
        let button = UIButton()
        button.setTitle("Cancelar", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(close), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: - View Methods

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
        contentView.addSubview(labelItemName)
        NSLayoutConstraint.activate([
            labelItemName.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            labelItemName.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            labelItemName.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10)
        ])
    }
    
    private func setupTextFieldListName(){
        contentView.addSubview(textFieldItemtName)
        NSLayoutConstraint.activate([
            textFieldItemtName.heightAnchor.constraint(equalToConstant: 30),
            textFieldItemtName.topAnchor.constraint(equalTo: labelItemName.bottomAnchor, constant: 15),
            textFieldItemtName.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            textFieldItemtName.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10)
        ])
    }
    
    private func setupButtonCreateList(){
        contentView.addSubview(buttonCreateItem)
        NSLayoutConstraint.activate([
            buttonCreateItem.heightAnchor.constraint(equalToConstant: 20),
            buttonCreateItem.topAnchor.constraint(equalTo: textFieldItemtName.bottomAnchor, constant: 15),
            buttonCreateItem.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            buttonCreateItem.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10)
        ])
    }
    
    private func setupButtonDimiss(){
        contentView.addSubview(buttonDimiss)
        NSLayoutConstraint.activate([
            buttonDimiss.heightAnchor.constraint(equalToConstant: 20),
            buttonDimiss.topAnchor.constraint(equalTo: buttonCreateItem.bottomAnchor, constant: 20),
            buttonDimiss.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -30),
            buttonDimiss.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 30)
        ])
    }
    
    @objc private func close(){
        delegate?.closePopup()
    }
    
    @objc private func addItem(){
        if let itemName = textFieldItemtName.text{
            delegate?.addItem(itemName: itemName)
        }
    }
    
    private func setupLayout(){
        setupContentView()
        setupLabelListName()
        setupTextFieldListName()
        setupButtonCreateList()
        setupButtonDimiss()
        self.backgroundColor = .clear
    }
    
    //MARK: - Init
    
    convenience init() {
        self.init(frame:.zero)
        setupLayout()
    }
    
    //MARK: - View Methods
    
    @objc public func closeView(){
        delegate?.closePopup()
        
    }
}

protocol ItemViewDelegate: AnyObject {
    func addItem(itemName: String)
    func closePopup()
}
