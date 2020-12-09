//
//  ViewController.swift
//  DemoApp
//
//  Created by Ludovic Ollagnier on 08/12/2020.
//

import UIKit

class ViewController: UIViewController {

    //var pour UI (Outlets)
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var isActiveSwitch: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("View controller chargé")
    }

    //func pour action UI (Actions)
    @IBAction func sayHello(_ sender: UIButton) {
        self.view.backgroundColor = UIColor.blue
    }

}

