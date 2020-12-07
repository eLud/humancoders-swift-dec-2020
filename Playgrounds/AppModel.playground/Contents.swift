import Foundation

// UIImage -> UIKit
// Image -> SwiftUI

// Struct <Truc>

struct Book: Hashable {
    let title: String
    let nbOfPages: Int
    let isPocket: Bool

    var isRead: Bool
    let author: Author
    //URL (pour image)
    //Date
}

struct Author: Hashable {
    let firstname: String
    let lastname: String
}

class Library {

    var books: Set<Book>

    init(initialBooks: Set<Book> = []) {
        books = initialBooks
    }
           //ext   int
    func add(_ book: Book) {
        let result = books.insert(book)
        print(result)
    }

    func remove(at index: Int) {
        //books.remove(at: index)
    }

    func remove(_ book: Book) {
        books.remove(book)
    }
}

let aBook = Book(title: "", nbOfPages: 0, isPocket: false, isRead: false, author: Author(firstname: "", lastname: ""))

let myLibrary = Library()
myLibrary.add(aBook)
myLibrary.add(aBook)
myLibrary.add(aBook)
myLibrary.remove(at: 5)
myLibrary.remove(aBook)
