//
//  EntryData.swift
//  ClassTraining
//
//  Created by User on 01/08/20.
//  Copyright © 2020 User. All rights reserved.
//

import Foundation
import UIKit

class EntryDataController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet weak var iDLabel: UILabel!
    @IBOutlet weak var iDTextField: UITextField!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    var studentList : [Student] = []
    
    override func viewDidLoad(){
        super.viewDidLoad()
        setupUi()
        setupUiInteraction()
    }
    
    private func setupUi() {
        nameLabel.text = "Name"
        nameTextField.placeholder = "Full Name"
        iDLabel.text = "ID"
        iDTextField.placeholder = "ID Number"
        addButton.setTitle("ADD", for: .normal)
        addButton.setTitleColor(UIColor.white, for : .normal)
        addButton.backgroundColor = (UIColor.green)
    }
    
    private func setupUiInteraction() {
        addButton.addTarget(self, action : #selector(didTapAdd), for : .touchUpInside)
    }
    
    @objc func didTapAdd() {
        let student: Student = Student(name: nameTextField.text ?? "" , id: iDTextField.text ?? "")
        studentList.append(student)
        let vc = StudentListController(nibName: "StudenListController", bundle : nil)
        vc.listSample = studentList
    
        dismiss(animated: true, completion: nil)
    }
    

// Closure for class end
}

