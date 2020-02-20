//
//  GreetingViewController.swift
//  mvc_ios
//
//  Created by a.reshetnikov on 18.02.2020.
//  Copyright © 2020 MIPT. All rights reserved.
//

import Foundation
import UIKit

class GreetingViewController: UIViewController {

    var person: Person!

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didTapButton(_ sender: Any) {
        let greetings = "Hello " + person.firstName + " " + person.secondName
        myLabel.text = greetings
    }
}
