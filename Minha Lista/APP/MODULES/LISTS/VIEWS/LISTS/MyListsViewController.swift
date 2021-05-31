//
//  ItemListViewController.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 18/05/21.
//

import UIKit

class MyListsViewController : UIViewController{
    //MARK: - Início refatoração para viper
    var presenter: ListPresenter?
    weak var delegate: ListViewDeletegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = targetView
        delegate = self
        //targetView.data = ListInteractor().getLists()
    }
    
    //MARK: - Fim refatoração viper
    
    private let targetView =  MyListsView()
    private let addListopupViewController = AddListPopupViewController()
    
    private let navigationBar: UINavigationBar = {
        let navigationBar: UINavigationBar = UINavigationBar(frame: .zero)
        navigationBar.barTintColor = .orange
        navigationBar.translatesAutoresizingMaskIntoConstraints = false
        return navigationBar
    }()
    
    private func setupNavigationBar(){
        targetView.addSubview(navigationBar)
        
        NSLayoutConstraint.activate([
            navigationBar.topAnchor.constraint(equalTo: targetView.safeAreaLayoutGuide.topAnchor),
            navigationBar.heightAnchor.constraint(equalToConstant: 45),
            navigationBar.leadingAnchor.constraint(equalTo: targetView.leadingAnchor),
            navigationBar.trailingAnchor.constraint(equalTo: targetView.trailingAnchor)
        ])
        
        let navigationItem = UINavigationItem(title: "Minhas Listas")
        navigationItem.rightBarButtonItem =  UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(callPopupAddList))
        navigationBar.setItems([navigationItem], animated: false)
    }
    
    override  func viewWillLayoutSubviews(){
        setupNavigationBar()
    }
    
    @objc func callPopupAddList(){
        print("Chamou o método")
        delegate?.openPopup()
    }
}

extension MyListsViewController: ListViewDeletegate{
    
    func openPopup() {
        print("Entrou no delegate")
        let navigation = UINavigationController(rootViewController: addListopupViewController)
        navigation.navigationBar.isHidden = true
        present(navigation, animated: true)
    }
    
    func closePopup() {
        let navigation = UINavigationController(rootViewController: addListopupViewController)
        navigation.navigationBar.isHidden = true
        dismiss(animated: true, completion: nil)
    }
}
