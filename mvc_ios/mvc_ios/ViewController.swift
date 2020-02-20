//
//  ViewController.swift
//  mvc_ios
//
//  Created by a.reshetnikov on 18.02.2020.
//  Copyright © 2020 MIPT. All rights reserved.
//

import UIKit

struct Person {
    let firstName: String
    let secondName: String
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapButton(_ sender: Any) {
//        let model = Person(firstName: "Andrew", secondName: "Reshetnikov")
//        let view = GreetingViewController(nibName: "GreetingViewController", bundle: nil)
//        view.person = model
//        self.present(view, animated: true, completion: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        if segue.identifier == "mySegue" {
            guard let destination = segue.destination as? GreetingViewController2 else {
                return
            }
            let model = Person(firstName: "Andrew", secondName: "Reshetnikov")
            destination.person = model
        }
    }
}

