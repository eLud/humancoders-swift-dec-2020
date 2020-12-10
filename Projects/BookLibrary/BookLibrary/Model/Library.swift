//
//  Library.swift
//  BookLibrary
//
//  Created by Ludovic Ollagnier on 08/12/2020.
//

import Foundation

class Library: ObservableObject {

    @Published var books: [Book]

    init(initialBooks: [Book] = []) {
        books = initialBooks
    }

    // Computed properties : O(n)
//    var sortedBooks: [Book] {
//        Array<Book>()
//    }

           //ext   int
    func add(_ book: Book) {
        books.append(book)
    }

    func remove(at index: Int) {
        books.remove(at: index)
    }

    func remove(_ book: Book) -> Book? {
        return nil
    }

}
