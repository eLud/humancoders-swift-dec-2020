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

        library.add(Book(title: "Book1", nbOfPages: 100, isPocket: true, style: .educational, isRead: false, author: Author(firstName: "Ludovic", lastName: "Ollagnier"), imageURL: nil))
        library.add(Book(title: "Book2", nbOfPages: 200, isPocket: true, style: .educational, isRead: false, author: Author(firstName: "Ludovic", lastName: "Ollagnier"), imageURL: nil))
        library.add(Book(title: "Book3", nbOfPages: 200, isPocket: true, style: .educational, isRead: false, author: Author(firstName: "Ludovic", lastName: "Ollagnier"), imageURL: nil))
        library.add(Book(title: "Book4", nbOfPages: 200, isPocket: true, style: .educational, isRead: false, author: Author(firstName: "Ludovic", lastName: "Ollagnier"), imageURL: nil))
        library.add(Book(title: "Book5", nbOfPages: 200, isPocket: true, style: .educational, isRead: false, author: Author(firstName: "Ludovic", lastName: "Ollagnier"), imageURL: nil))
        library.add(Book(title: "Book6", nbOfPages: 200, isPocket: true, style: .educational, isRead: false, author: Author(firstName: "Ludovic", lastName: "Ollagnier"), imageURL: nil))
        library.add(Book(title: "Book7", nbOfPages: 200, isPocket: true, style: .educational, isRead: false, author: Author(firstName: "Ludovic", lastName: "Ollagnier"), imageURL: nil))
        library.add(Book(title: "Book8", nbOfPages: 200, isPocket: true, style: .educational, isRead: false, author: Author(firstName: "Ludovic", lastName: "Ollagnier"), imageURL: nil))
        library.add(Book(title: "Book9", nbOfPages: 200, isPocket: true, style: .educational, isRead: false, author: Author(firstName: "Ludovic", lastName: "Ollagnier"), imageURL: nil))
        library.add(Book(title: "Book10", nbOfPages: 200, isPocket: true, style: .educational, isRead: false, author: Author(firstName: "Ludovic", lastName: "Ollagnier"), imageURL: nil))
        library.add(Book(title: "Book11", nbOfPages: 200, isPocket: true, style: .educational, isRead: false, author: Author(firstName: "Ludovic", lastName: "Ollagnier"), imageURL: nil))
        library.add(Book(title: "Book12", nbOfPages: 200, isPocket: true, style: .educational, isRead: false, author: Author(firstName: "Ludovic", lastName: "Ollagnier"), imageURL: nil))
        library.add(Book(title: "Book122", nbOfPages: 200, isPocket: true, style: .educational, isRead: false, author: Author(firstName: "Ludovic", lastName: "Ollagnier"), imageURL: nil))
        library.add(Book(title: "Book3456", nbOfPages: 200, isPocket: true, style: .educational, isRead: false, author: Author(firstName: "Ludovic", lastName: "Ollagnier"), imageURL: nil))
        library.add(Book(title: "dfgbfh", nbOfPages: 200, isPocket: true, style: .educational, isRead: false, author: Author(firstName: "Ludovic", lastName: "Ollagnier"), imageURL: nil))
        library.add(Book(title: "Book2", nbOfPages: 200, isPocket: true, style: .educational, isRead: false, author: Author(firstName: "Ludovic", lastName: "hfghn"), imageURL: nil))
        library.add(Book(title: "Book2", nbOfPages: 200, isPocket: true, style: .educational, isRead: false, author: Author(firstName: "Ludovic", lastName: "Ollagnier"), imageURL: nil))
        library.add(Book(title: "fghn", nbOfPages: 200, isPocket: true, style: .educational, isRead: false, author: Author(firstName: "Ludovic", lastName: "Ollagnier"), imageURL: nil))
        library.add(Book(title: "hg", nbOfPages: 200, isPocket: true, style: .educational, isRead: false, author: Author(firstName: "Ludovic", lastName: "Olfhgnlagnier"), imageURL: nil))
        library.add(Book(title: "Boghgok2", nbOfPages: 200, isPocket: true, style: .educational, isRead: false, author: Author(firstName: "Ludovic", lastName: "Ollagnier"), imageURL: nil))
        library.add(Book(title: "Bohghghghk2", nbOfPages: 200, isPocket: true, style: .educational, isRead: false, author: Author(firstName: "Ludovic", lastName: "Ollagnier"), imageURL: nil))
        library.add(Book(title: "Book2hggh", nbOfPages: 200, isPocket: true, style: .educational, isRead: false, author: Author(firstName: "Ludovic", lastName: "Ollagnier"), imageURL: nil))
        library.add(Book(title: "Book2", nbOfPages: 200, isPocket: true, style: .educational, isRead: false, author: Author(firstName: "Ludovic", lastName: "Ollagnier"), imageURL: nil))
        library.add(Book(title: "Bookrzr2", nbOfPages: 200, isPocket: true, style: .educational, isRead: false, author: Author(firstName: "Ludovic", lastName: "fezea"), imageURL: nil))
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
