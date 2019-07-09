//
//  Assignment.swift
//  Assignment Notebook
//
//  Created by Leah Nella on 7/8/19.
//  Copyright © 2019 Leah Nella. All rights reserved.
//

import UIKit

class Assignment: Codable {
    var homework : String
    var subject: String
    var date: String
    var image: Data
    init(homework: String, subject: String, date: String, image: Data) {
        self.homework = homework
        self.subject = subject
        self.date = date
        self.image = image
    }
}
