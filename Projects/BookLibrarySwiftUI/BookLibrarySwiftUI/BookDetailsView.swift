//
//  BookDetailsView.swift
//  BookLibrarySwiftUI
//
//  Created by Ludovic Ollagnier on 10/12/2020.
//

import SwiftUI

struct BookDetailsView: View {

    var book: Book

    var body: some View {
        Text(book.title)
    }
}

struct BookDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailsView(book: Book(title: "Test", nbOfPages: 67, isPocket: false, style: .sciFi, isRead: true, author: nil, imageURL: nil))
    }
}
