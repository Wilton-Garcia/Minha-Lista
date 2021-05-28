//
//  ItemListViewController.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 18/05/21.
//

import UIKit

class MyListsViewController : UIViewController{
    
    private let targetView =  MyListsView()
    private let addListopupViewController = AddListPopupViewController()
    
    private let navigationBar: UINavigationBar = {
        let navigationBar: UINavigationBar = UINavigationBar(frame: .zero)
        return navigationBar
    }()
    
    private let barButtonItemAddList: UIBarButtonItem = {
        let barButtonItem = UIBarButtonItem()
        
        return barButtonItem
    }()
    
    private func setupNavigationBar(){
        targetView.addSubview(navigationBar)
        
        navigationBar.translatesAutoresizingMaskIntoConstraints = false
        navigationBar.topAnchor.constraint(equalTo: targetView.safeAreaLayoutGuide.topAnchor).isActive = true
        navigationBar.heightAnchor.constraint(equalToConstant: 44).isActive = true
        navigationBar.leadingAnchor.constraint(equalTo: targetView.leadingAnchor).isActive = true
        navigationBar.trailingAnchor.constraint(equalTo: targetView.trailingAnchor).isActive = true

        navigationBar.barTintColor = .orange
      
        let navigationItem = UINavigationItem(title: "Minhas Listas")
        let doneBtn = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(hello))
 
        
        navigationItem.rightBarButtonItem = doneBtn
        navigationBar.setItems([navigationItem], animated: false)
    }
    
    override  func viewWillLayoutSubviews(){
        
     
        setupNavigationBar()
     
       
    }
    
    @objc func hello(){
        
        print("Clicou")
        let navigation = UINavigationController(rootViewController: addListopupViewController)
        present(navigation, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = targetView
        targetView.data = ListInteractor().getAllLists()
    }
    
}
