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
        save()
    }

    func remove(at index: Int) {
        books.remove(at: index)
    }

    func remove(_ book: Book) -> Book? {
        return nil
    }

    func save() {
        let encoder = JSONEncoder()
        encoder.keyEncodingStrategy = .convertToSnakeCase

        do {
            let data = try encoder.encode(books)
            print(String(data: data, encoding: .utf8)!)

            let fileManager = FileManager.default
            guard let url = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first else {
                return
            }
            let fullURL = url.appendingPathComponent("SavedLibrary.json")
            print(fullURL)
            try? data.write(to: fullURL)
        } catch {
            print(error)
        }

//        let data = try? encoder.encode(books)

    }

    func restore(from data: Data) {

        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase

        do {
            let books = try decoder.decode([Book].self, from: data)
            print(books)
        } catch {
            print(error)
        }
    }

}
