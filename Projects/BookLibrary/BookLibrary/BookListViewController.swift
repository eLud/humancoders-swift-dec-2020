//
//  BookListViewController.swift
//  BookLibrary
//
//  Created by Ludovic Ollagnier on 09/12/2020.
//

import UIKit

class BookListViewController: UIViewController {

    let library = Library()
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.dataSource = self

        let notifCenter = NotificationCenter.default
        notifCenter.addObserver(forName: Notification.Name(rawValue: "LibraryUpdated"), object: library, queue: OperationQueue.main) { (notif) in
            self.reloadTableView()
        }

        let refresh = UIRefreshControl(frame: CGRect.zero, primaryAction: UIAction(handler: { (action) in
            self.reloadTableView()
        }))
        tableView.refreshControl = refresh
    }
    
    func reloadTableView() {
        self.tableView.reloadData()
        tableView.refreshControl?.endRefreshing()
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.

        if segue.identifier == "showDetails" {

            guard let destination = segue.destination as? BookDetailsViewController else { fatalError("Wrong received viewcontroller type ") }

            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            let selectedBook = library.sortedBooks()[indexPath.row]

            destination.currentBook = selectedBook

        } else if segue.identifier == "showForm" {
            guard let destination = segue.destination as? ViewController else { fatalError("Wrong received viewcontroller type ") }
            destination.library = library
        }
    }

}

extension BookListViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return library.books.count
    }

    // 60Hz -> 16ms
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "bookCell", for: indexPath)

        let book = library.sortedBooks()[indexPath.row]
        cell.textLabel?.text = book.title
        cell.detailTextLabel?.text = book.author?.fullName

        print("cell pour \(indexPath)")
        return cell
    }
}
