//
//  TaskTVC.swift
//  To Do List Alpha
//
//  Created by Asadbek on 21/11/22.
//

import UIKit

class TaskTVC: UITableViewCell {
    
    static func nib() -> UINib {
        UINib(nibName: "TaskTVC", bundle: nil)
    }
    static let identifier: String = "TaskTVC"
    
    @IBOutlet weak var titleLbl: UILabel!
    
    @IBOutlet weak var subtTitle: UILabel!

    @IBOutlet weak var priorityV: UIView!
    
    @IBOutlet weak var typeView: UIView!
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
    }
    
    
    func updateCell(task: TaskDM, groupType: GroupTypeEnum) {
        
        titleLbl.text = task.title
        subtTitle.text = task.subTitle
        
        
        switch task.priority {
            
        case .high:
            priorityV.backgroundColor = .systemRed
        case .medium:
            priorityV.backgroundColor = .systemYellow
        case .low:
            priorityV.backgroundColor = .systemGreen
        case .none:
            priorityV.backgroundColor = .systemGray6 
        }
        
        switch groupType {
        case .new:
            typeView.backgroundColor = .systemGray6
        case .archived:
            typeView.backgroundColor = .systemGray4
        case .finished:
            typeView.backgroundColor = .systemGray2

        }
        
    }

    
}
