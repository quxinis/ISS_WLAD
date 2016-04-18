//
//  DetailViewController.swift
//  NavigateWithMVC
//
//  Created by student on 16/4/16.
//  Copyright © 2016 ISS-SE24-MWAD. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var idField: UITextField!
    @IBOutlet weak var descriptionField: UITextField!
    @IBOutlet weak var lecturerField: UITextField!
    
    var index : Int!
    var editingCourse : Course!
    @IBOutlet weak var detailDescriptionLabel: UILabel!


    var detailItem: AnyObject? {
            didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = detail.description
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        idField.text = editingCourse.courseId
        descriptionField.text = editingCourse.courseDesc
        lecturerField.text = editingCourse.lecturer
        
        navigationItem.title = editingCourse.courseId
    }

    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        editingCourse.courseId = idField.text!
        editingCourse.courseDesc = descriptionField.text!
        editingCourse.lecturer = lecturerField.text!
        Course.updateCourse(index, course: editingCourse)
    }

}

