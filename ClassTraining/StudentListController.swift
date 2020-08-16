//
//  StudentList.swift
//  ClassTraining
//
//  Created by User on 01/08/20.
//  Copyright © 2020 User. All rights reserved.
//

import Foundation
import UIKit

class StudentListController: UIViewController {
    var studentDetailsController: StudentDetailsController!
    var studentList: EntryDataController!
    @IBOutlet var tableView: UITableView!
    
    var listSample: Student? = Student(name: "", id: "")
    
//    var listSample : [Student] = [
//        Student(name: "Adi", id: "001"),
//        Student(name: "Budi", id: "002"),
//    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    @IBAction func didTapBackButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
}
extension StudentListController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(listSample[indexPath.row].id)
//        studentDetailsController = StudentDetailsController()
//        studentDetailsController.name = listSample[indexPath.row].name
//        studentDetailsController.id = listSample[indexPath.row].id
        navigationController?.pushViewController(studentDetailsController, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listSample.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = listSample[indexPath.row].name
        return cell
    }
}
