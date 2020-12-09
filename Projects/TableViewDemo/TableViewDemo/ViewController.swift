//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Ludovic Ollagnier on 09/12/2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    let model = ["Paris", "Lyon", "Marseille"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        tableView.dataSource = self
    }

}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return model.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "demoCell", for: indexPath)

        cell.textLabel?.text = model[indexPath.row]

        return cell
    }
}
