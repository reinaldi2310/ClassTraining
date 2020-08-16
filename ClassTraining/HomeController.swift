//
//  ViewController.swift
//  ClassTraining
//
//  Created by User on 31/07/20.
//  Copyright © 2020 User. All rights reserved.
//

import UIKit

class HomeController : UIViewController {
   
    var studentListController: StudentListController!
    var entryDataController: EntryDataController!
    var studentDetailsController: StudentDetailsController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUi()
        setupUiInteraction()
        
    }
    @IBOutlet weak var studentsDatabaselabel: UILabel!
    @IBOutlet weak var checkDataButton: UIButton!
    @IBOutlet weak var addNewButton: UIButton!
    @IBOutlet weak var footPrintLabel: UILabel!
    
    
    private func setupUi() {
        studentsDatabaselabel.text = "STUDENTS DATABASE"
        studentsDatabaselabel.backgroundColor = (UIColor.blue)
        studentsDatabaselabel.textColor = (UIColor.white)
        studentsDatabaselabel.layer.cornerRadius = 10
        studentsDatabaselabel.clipsToBounds = true
        checkDataButton.setTitle("CHECK DATA", for: .normal)
        checkDataButton.setTitleColor(UIColor.white, for: .normal)
        checkDataButton.backgroundColor = (UIColor.green)
        checkDataButton.layer.cornerRadius = 10
        checkDataButton.clipsToBounds = true
        addNewButton.setTitle("ADD NEW", for: .normal)
        addNewButton.setTitleColor(UIColor.white, for: .normal)
        addNewButton.backgroundColor = (UIColor.green)
        addNewButton.layer.cornerRadius = 10
        addNewButton.clipsToBounds = true
        footPrintLabel.text = "Created for Educational Purpose"
    }
    private func setupUiInteraction() {
        checkDataButton.addTarget(self, action: #selector(didTapCheckData), for: .touchUpInside)
        addNewButton.addTarget(self, action: #selector(didTapAddNew), for: .touchUpInside)
    }
    
    @objc func didTapCheckData() {
        studentListController = StudentListController()
        navigationController?.pushViewController(studentListController, animated: true)
    }
    @objc func didTapAddNew() {
        entryDataController = EntryDataController()
        navigationController?.pushViewController(entryDataController, animated: true)
    }
    // Closure for class
}

