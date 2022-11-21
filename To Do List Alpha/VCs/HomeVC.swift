//
//  HomeVC.swift
//  To Do List Alpha
//
//  Created by Asadbek on 21/11/22.
//

import UIKit

class HomeVC: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var groupTasks: [TaskGroupDM] = [
        
        TaskGroupDM(tasks: [ ], groupType: .new),
        TaskGroupDM(tasks:  [ ], groupType: .new),
        TaskGroupDM(tasks: [ ], groupType: .new),
    
     ]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpTableView()
        
        
    }

    @IBAction func plusTapped(_ sender: UIButton) {
        let taskVC = NewTaskVC(nibName: "NewTaskVC", bundle: nil)
        taskVC.modalPresentationStyle = .overFullScreen
        self.present(taskVC, animated: false)
        
        
    }
    
    
    


}

extension HomeVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //
    }
}

extension HomeVC: UITableViewDataSource {
    
    
    func setUpTableView() {
        
        self.tableView.delegate =  self
        self.tableView.dataSource =  self
        self.tableView.separatorStyle = .none
        self.tableView.register(TaskTVC.nib(), forCellReuseIdentifier: TaskTVC.identifier)
        
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return groupTasks.count
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groupTasks[section].tasks.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let taskCell = tableView.dequeueReusableCell(withIdentifier: TaskTVC.identifier, for: indexPath) as? TaskTVC else { return UITableViewCell()}
        taskCell.updateCell(task: groupTasks[indexPath.section].tasks[indexPath.row], groupType: groupTasks[indexPath.section].groupType)
        return taskCell
    }
    
}
