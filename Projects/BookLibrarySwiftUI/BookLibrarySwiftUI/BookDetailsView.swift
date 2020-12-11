//
//  BookDetailsView.swift
//  BookLibrarySwiftUI
//
//  Created by Ludovic Ollagnier on 10/12/2020.
//

import SwiftUI

struct BookDetailsView: View {

    var book: Book

    @AppStorage("TextIsLarge") var largeText = false

    var body: some View {
        VStack {
            Toggle(isOn: $largeText, label: {
                Text("Text is large")
            })
            Text(book.title)
                .font(largeText ? .largeTitle : .title)
            if largeText {
                Text("User wants large text")
            }
        }

    }
}

struct BookDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailsView(book: Book(title: "Test", nbOfPages: 67, isPocket: false, style: .sciFi, isRead: true, author: nil, imageURL: nil))
    }
}
