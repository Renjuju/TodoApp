//
//  TextViewController.swift
//  TodoApp
//
//  Created by Renju Radhakrishnan on 5/11/19.
//  Copyright © 2019 Renju Radhakrishnan. All rights reserved.
//

import UIKit

class TextViewController: UIViewController {

    @IBOutlet weak var editButtonOutlet: UIButton!
    @IBOutlet weak var textLabelOutlet: UITextField!
    
    var row: Int = 0
    
    @IBAction func sumbitAction(_ sender: UIButton) {
        if(textLabelOutlet.text != "") {
            delegate?.editTask(row: 0, text: textLabelOutlet.text ?? "")
        }
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    var delegate: Tasks?
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
