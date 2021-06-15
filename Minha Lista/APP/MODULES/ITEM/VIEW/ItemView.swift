//
//  ItemView.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 14/06/21.
//

import UIKit

class ItemView: UIView {

    //MARK: - Private properties
    
    public weak var delegate: AddListViewDelegate?
    
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
        label.text = "Digite um nome para o item"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let textFieldtemName: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Lista de ..."
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()

    private let buttonCreateItem: UIButton = {
        let button = UIButton()
        button.setTitle("Cadastrar Item", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(addList), for: .touchUpInside)
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
    
    private func setupLabelItemName(){
        contentView.addSubview(labelItemName)
        NSLayoutConstraint.activate([
            labelItemName.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            labelItemName.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            labelItemName.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10)
        ])
    }
    
    private func setupTextFieldItemName(){
        contentView.addSubview(textFieldtemName)
        NSLayoutConstraint.activate([
            textFieldtemName.heightAnchor.constraint(equalToConstant: 30),
            textFieldtemName.topAnchor.constraint(equalTo: labelItemName.bottomAnchor, constant: 15),
            textFieldtemName.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            textFieldtemName.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10)
        ])
    }
    
    private func setupButtonCreateItem(){
        contentView.addSubview(buttonCreateItem)
        NSLayoutConstraint.activate([
            buttonCreateItem.heightAnchor.constraint(equalToConstant: 20),
            buttonCreateItem.topAnchor.constraint(equalTo: textFieldtemName.bottomAnchor, constant: 15),
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
    
    @objc private func addList(){
        if let listName = textFieldtemName.text{
            delegate?.addList(listName: listName)
        }
    }
    
    private func setupLayout(){
        setupContentView()
        setupLabelItemName()
        setupTextFieldItemName()
        setupButtonCreateItem()
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
