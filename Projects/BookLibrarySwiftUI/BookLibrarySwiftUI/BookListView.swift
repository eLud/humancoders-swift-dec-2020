//
//  BookListView.swift
//  BookLibrarySwiftUI
//
//  Created by Ludovic Ollagnier on 10/12/2020.
//

import SwiftUI

struct BookListView: View {

    @StateObject var library = Library(initialBooks: [Book(title: "Test", nbOfPages: 89, isPocket: true, style: .police, isRead: false, author: Author(firstName: "Justin", lastName: "Case"), imageURL: nil)])

    @State private var formIsShown = false

    var body: some View {
        NavigationView {
            List(library.books) { book in
                NavigationLink(
                    destination: BookDetailsView(book: book),
                    label: {
                        VStack(alignment: .leading) {
                            Text(book.title)
                            Text(book.author?.fullName ?? "")
                                .font(.callout)
                                .foregroundColor(.gray)
                        }

                    })
            }
            .navigationTitle("My books")
            .navigationBarItems(trailing: Button("Plus") {
                formIsShown = true
            })
            .sheet(isPresented: $formIsShown, content: {
                FormView(library: library)
            })
        }
    }
}

struct BookListView_Previews: PreviewProvider {
    static var previews: some View {
        BookListView()
    }
}
