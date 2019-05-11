//
//  TaskCell.swift
//  TodoApp
//
//  Created by Renju Radhakrishnan on 5/11/19.
//  Copyright © 2019 Renju Radhakrishnan. All rights reserved.
//

import UIKit

class TaskCell: UITableViewCell {

    @IBOutlet weak var checkBoxOutlet: UIView!
    @IBOutlet weak var taskNameLabel: UILabel!
    

    @IBAction func buttonAction(_ sender: Any) {
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
