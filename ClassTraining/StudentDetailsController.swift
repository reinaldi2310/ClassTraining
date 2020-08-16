//
//  StudentDetails.swift
//  ClassTraining
//
//  Created by User on 04/08/20.
//  Copyright © 2020 User. All rights reserved.
//

import Foundation
import UIKit

class StudentDetailsController: UIViewController {
   
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var iDLabel: UILabel!
    
    var name = ""
    var id = ""
   
    var Details = StudentListController()
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
        setupUi()
    }
    private func setupUi() {
        nameLabel.text = name
        iDLabel.text = id
    }

//Closure for class
}
