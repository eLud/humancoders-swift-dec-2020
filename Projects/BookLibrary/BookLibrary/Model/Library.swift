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
