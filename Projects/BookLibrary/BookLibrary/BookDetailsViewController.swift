//
//  BookDetailsViewController.swift
//  BookLibrary
//
//  Created by Ludovic Ollagnier on 10/12/2020.
//

import UIKit

class BookDetailsViewController: UIViewController {

    @IBOutlet weak var bookTitleLabel: UILabel!

    var currentBook: Book?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        guard let book = currentBook else { return }
        bookTitleLabel.text = book.title
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
