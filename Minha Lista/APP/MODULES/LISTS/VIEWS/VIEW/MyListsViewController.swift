//
//  ItemListViewController.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 18/05/21.
//

import UIKit

class MyListsViewController : UIViewController{
    
    private let targetView =  MyListsView()
      
    
    private let navigationBar: UINavigationBar = {
        let navigationBar: UINavigationBar = UINavigationBar(frame: .zero)
        return navigationBar
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
        let doneBtn = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: nil, action: #selector(hello))
        
        
             navigationItem.rightBarButtonItem = doneBtn
             navigationBar.setItems([navigationItem], animated: false)
    }
    
    override  func viewWillLayoutSubviews(){
        
     
        setupNavigationBar()
     
       
    }
    
    @objc func hello(){
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = targetView
        targetView.data = ListInteractor().getAllLists()
    }
    
}
