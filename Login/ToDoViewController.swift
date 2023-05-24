//
//  ToDoViewController.swift
//  Login
//
//  Created by Betel on 5/18/23.
//

import UIKit

class ToDoViewController: UIViewController {
    private let table: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self,
                       forCellReuseIdentifier: "cell")
        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "To Do List"
        view.addSubview(table)
 
    }
    

   

}
