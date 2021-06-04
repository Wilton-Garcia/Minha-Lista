//
//  AddListPopupView.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 26/05/21.
//

import UIKit

class AddListaPopupView: UIView{
    
    
    //MARK: - Private properties
    
    private weak var delegate: ListViewDeletegate?
    
    private var clique = 0;
    
    //MARK: - View Properties
    
    private let contentView: UIView = {
       let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let labelListName: UILabel = {
        let label = UILabel()
        label.text = "Digite um nome para lista"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let textFieldListName: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Lista de ..."
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()

    private let buttonCreateList: UIButton = {
        let button = UIButton()
        button.setTitle("Cadastrar", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let buttonDimiss: UIButton = {
        let button = UIButton()
        button.setTitle("Cancelar", for: .normal)
        button.setTitleColor(.black, for: .normal)
        //button.addTarget(self, action: #selector(dimissView), for: .touchUpInside)
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
        contentView.addSubview(labelListName)
        NSLayoutConstraint.activate([
            labelListName.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            labelListName.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            labelListName.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10)
        ])
    }
    
    private func setupTextFieldListName(){
        contentView.addSubview(textFieldListName)
        NSLayoutConstraint.activate([
            textFieldListName.heightAnchor.constraint(equalToConstant: 30),
            textFieldListName.topAnchor.constraint(equalTo: labelListName.bottomAnchor, constant: 15),
            textFieldListName.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            textFieldListName.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10)
        ])
    }
    
    private func setupButtonCreateList(){
        contentView.addSubview(buttonCreateList)
        NSLayoutConstraint.activate([
            buttonCreateList.heightAnchor.constraint(equalToConstant: 20),
            buttonCreateList.topAnchor.constraint(equalTo: textFieldListName.bottomAnchor, constant: 15),
            buttonCreateList.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            buttonCreateList.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10)
        ])
    }
    
    private func setupButtonDimiss(){
        contentView.addSubview(buttonDimiss)
        NSLayoutConstraint.activate([
            buttonDimiss.heightAnchor.constraint(equalToConstant: 20),
            buttonDimiss.topAnchor.constraint(equalTo: buttonCreateList.bottomAnchor, constant: 20),
            buttonDimiss.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -30),
            buttonDimiss.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 30)
        ])
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
