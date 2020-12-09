//
//  ViewController.swift
//  BookLibrary
//
//  Created by Ludovic Ollagnier on 08/12/2020.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    @IBOutlet weak var authorFirstNameTextField: UITextField!
    @IBOutlet weak var authorLastNameTextField: UITextField!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var styleSegmentedControl: UISegmentedControl!
    @IBOutlet weak var nbOfPagesTextField: UITextField!
    @IBOutlet weak var isPocketSwitch: UISwitch!
    @IBOutlet weak var isReadSwitch: UISwitch!

    var library = Library()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureUI()
    }

    func configureUI() {
        styleSegmentedControl.removeAllSegments()
        let allCases = Book.Style.allCases
        for style in allCases {
            styleSegmentedControl.insertSegment(withTitle: style.title, at: styleSegmentedControl.numberOfSegments, animated: false)
        }
        styleSegmentedControl.selectedSegmentIndex = 0
    }

    @IBAction func save(_ sender: Any) {

        guard let title = titleTextField.text, !title.isEmpty else { return }
        guard let authFirstName = authorFirstNameTextField.text, !authFirstName.isEmpty else { return }
        guard let nbPage = authorLastNameTextField.intValue else { return }

        let selectedSegmentIndex = styleSegmentedControl.selectedSegmentIndex
        guard let style = Book.Style(rawValue: selectedSegmentIndex) else { return }

        let newBook = Book(title: title, nbOfPages: nbPage, isPocket: isPocketSwitch.isOn, style: style, isRead: isReadSwitch.isOn, author: nil, imageURL: nil)

        library.add(newBook)

        let host = UIHostingController(rootView: BadgedLabel(text: "Hello World"))
        present(host, animated: true, completion: nil)
    }
}

