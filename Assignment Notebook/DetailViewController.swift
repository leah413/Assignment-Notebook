//
//  DetailViewController.swift
//  Assignment Notebook
//
//  Created by Leah Nella on 7/8/19.
//  Copyright © 2019 Leah Nella. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var assignmentTextField: UITextField!
    @IBOutlet weak var subjectTextField: UITextField!
    @IBOutlet weak var dateTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    var detailItem: Assignment? {
        didSet {
            // Update the view.
            configureView()
        }
    }

    


    func configureView() {
        // Update the user interface for the detail item.
        if let assignment = self.detailItem {
            if assignmentTextField != nil {
                assignmentTextField.text = assignment.homework
                subjectTextField.text = assignment.subject
                dateTextField.text = String(assignment.date)
                imageView.image = UIImage(data:assignment.image)
            }
        }
    }
    override func viewWillDisappear(_ animated: Bool) {
        if let assignment = self.detailItem {
            assignment.homework = assignmentTextField.text!
            assignment.subject = subjectTextField.text!
            assignment.date = dateTextField.text!
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }

    


}

