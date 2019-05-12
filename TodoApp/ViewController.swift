//
//  ViewController.swift
//  TodoApp
//
//  Created by Renju Radhakrishnan on 5/11/19.
//  Copyright © 2019 Renju Radhakrishnan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, Tasks {
    
    @IBOutlet weak var tableView: UITableView!
    var tasks: [Task] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        self.navigationController?.performSegue(withIdentifier: "textSegue", sender: indexPath)
        self.performSegue(withIdentifier: "textSegue", sender: indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if(editingStyle == .delete) {
            deleteTask(index: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "taskCell", for: indexPath) as! TaskCell
        cell.taskNameLabel.text = tasks[indexPath.row].name
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "textSegue") {
            let foobar = segue.destination as! TextViewController
            foobar.delegate = self
            foobar.row = (sender as! Int)
        } else {
            let viewController = segue.destination as! AddTaskController
            viewController.delegate = self
        }
    }
    
    func addTask(name: String) {
        tasks.append(Task(name: name))
        tableView.reloadData()
    }
    
    func deleteTask(index: Int) {
        tasks.remove(at: index)
    }
    
    func editTask(row: Int, text: String) {
        print("Got the row \(row)")
        tasks[row] = Task(name: text)
        print(tasks)
        tableView.reloadData()
    }
}

class Task {
    var name = ""
    var checked = false
    
    convenience init(name: String) {
        self.init()
        self.name = name
    }
}
