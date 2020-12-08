import Foundation

// UIImage -> UIKit
// Image -> SwiftUI

// Struct <Truc>

struct Book: Hashable {

    static var standardPagesNumber: Int = 200

    let title: String
    let nbOfPages: Int
    let isPocket: Bool

    var isRead: Bool
    let author: Author?
    let imageURL: URL?
    //Date
}

struct Author: Hashable {
    let firstName: String
    let middleName: String?
    let lastName: String

    //Get-only computed property
    var fullName: String {
        return firstName + " " + lastName
    }

    init(firstName: String, lastName: String) {
        self.init(firstName: firstName, lastName: lastName, middleName: nil)
    }

    init(firstName: String, lastName: String, middleName: String? = nil) {
        self.firstName = firstName
        self.lastName = lastName
        self.middleName = middleName
    }
}

class Library {

    var books: Set<Book>

    init(initialBooks: Set<Book> = []) {
        books = initialBooks
    }

    // Computed properties : O(n)
//    var sortedBooks: [Book] {
//        Array<Book>()
//    }

           //ext   int
    func add(_ book: Book) {
        let result = books.insert(book)
        books.count
        books.isEmpty
        print(result)
    }

    func remove(at index: Int) {
        //books.remove(at: index)
    }

    func remove(_ book: Book) -> Book? {
        return books.remove(book)
    }
}

var author = Author(firstName: "Justin", lastName: "Case")
author.fullName

Book.standardPagesNumber = 250

let aBook = Book(title: "", nbOfPages: Book.standardPagesNumber, isPocket: false, isRead: false, author: nil, imageURL: nil)

let myLibrary = Library()
myLibrary.add(aBook)
myLibrary.add(aBook)
myLibrary.add(aBook)
myLibrary.remove(at: 5)
myLibrary.remove(aBook)
