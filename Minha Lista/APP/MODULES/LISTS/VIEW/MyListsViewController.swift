//
//  ItemListViewController.swift
//  Minha Lista
//
//  Created by Wilton Garcia on 18/05/21.
//

import UIKit

class MyListsViewController : UIViewController{
    private let targetView =  MyListsView()
    
    
    override func viewWillLayoutSubviews(){
        let width = targetView.frame.width
       // let y = UIApplication.sha
        let startingYPos = UIApplication.shared.statusBarFrame.size.height;
        let navigationBar: UINavigationBar = UINavigationBar(frame: CGRect(x: 0, y: startingYPos, width: width, height: 44))
        navigationBar.backgroundColor = .orange
        navigationBar.isTranslucent = false
        targetView.addSubview(navigationBar)
             let navigationItem = UINavigationItem(title: "Minhas Listas")
             let doneBtn = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: nil, action: #selector(hello))
             navigationItem.rightBarButtonItem = doneBtn
             navigationBar.setItems([navigationItem], animated: false)
    }
    
    @objc func hello(){
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = targetView
        targetView.data = ListInteractor().getAllLists()
    }
    
}
