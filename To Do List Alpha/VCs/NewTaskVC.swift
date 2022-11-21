//
//  NewTaskVC.swift
//  To Do List Alpha
//
//  Created by Asadbek on 21/11/22.
//

import UIKit

class NewTaskVC: UIViewController {
    
    @IBOutlet weak var mainViewBorder: UIView! {
        didSet {
            mainViewBorder.layer.cornerRadius = 20
            mainViewBorder.layer.borderWidth = 1
            mainViewBorder.layer.borderColor = UIColor.systemGreen.cgColor
        }
    }
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        mainViewBorder.transform = .init(translationX: 0, y: 1000)
        self.view.backgroundColor = .clear
    }
    
    override func viewWillAppear(_ animated: Bool) {
        UIView.animate(withDuration: 0.3, delay: 0,options: .curveEaseOut) {
            self.mainViewBorder.transform = .identity
            self.view.backgroundColor = .gray.withAlphaComponent(0.2)
        }
    }
    
    @IBAction func blurTapped(_ sender: Any) {
        
        UIView.animate(withDuration: 0.3, delay: 0,options: .curveEaseOut) {
            self.mainViewBorder.transform = .init(translationX: 0, y: 1000)
            self.view.backgroundColor = .clear
        } completion: { _ in
            self.dismiss(animated: true)
        }
        
    }
    
    @IBAction func priorityTapped(_ sender: Any) {
    }
    
    @IBAction func addTapped(_ sender: Any) {
    }
    



}
