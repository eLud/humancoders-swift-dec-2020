//
//  FormView.swift
//  BookLibrarySwiftUI
//
//  Created by Ludovic Ollagnier on 10/12/2020.
//

import SwiftUI

struct FormView: View {

    @State private var title: String = ""
    @State private var authorFirstName: String = ""
    @State private var isPocket: Bool = false
    @State private var style: Book.Style = .police

    @ObservedObject var library: Library

    var body: some View {
        NavigationView {
            Form {
                TextField("Title", text: $title)
                Picker("Style", selection: $style) {
                    ForEach(Book.Style.allCases) { style in
                        Text(style.title)
                            .tag(style)
                    }
                }
                Toggle("Is Pocket", isOn: $isPocket)
                Section(header: Text("Author")) {
                    TextField("First Name", text: $authorFirstName)
                    TextField("Last Name", text: $authorFirstName)
                }
                Button("Save") {
                    save()
                }
            }
        }
    }

    func save() {
        let book = Book(title: title, nbOfPages: 0, isPocket: isPocket, style: style, isRead: false, author: Author(firstName: authorFirstName, lastName: ""), imageURL: nil)
        library.add(book)
    }
}

struct FormView_Previews: PreviewProvider {

    static var previews: some View {
        FormView(library: Library())
    }
}
