//
//  AddTaskController.swift
//  TodoApp
//
//  Created by Renju Radhakrishnan on 5/11/19.
//  Copyright © 2019 Renju Radhakrishnan. All rights reserved.
//

import UIKit

protocol Tasks {
    func addTask(name: String)
    func editTask(row: Int, text: String)
}

class AddTaskController: UIViewController {

    @IBOutlet weak var taskNameOutlet: UITextField!
    
    @IBAction func addAction(_ sender: Any) {
        if(taskNameOutlet.text != "") {
            delegate?.addTask(name: taskNameOutlet.text!)
            navigationController?.popViewController(animated: true)
        }
    }
    
    var delegate: Tasks?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
