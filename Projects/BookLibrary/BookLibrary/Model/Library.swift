//
//  Library.swift
//  BookLibrary
//
//  Created by Ludovic Ollagnier on 08/12/2020.
//

import Foundation

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
        print(result)
    }

    func remove(at index: Int) {
        //books.remove(at: index)
    }

    func remove(_ book: Book) -> Book? {
        return books.remove(book)
    }

    // Closure based
    func sortedBooks() -> [Book] {
        return books.sorted { (book1, book2) -> Bool in
            return book1.title < book2.title
        }
    }

    // Function based
    func sortedBooks2() -> [Book] {
        return books.sorted(by: sort(book1:book2:))
    }

    func sort(book1: Book, book2: Book) -> Bool {
        return book1.title < book2.title
    }
}
