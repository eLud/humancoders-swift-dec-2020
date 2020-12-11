//
//  ContentView.swift
//  CoreDataDemo
//
//  Created by Ludovic Ollagnier on 11/12/2020.
//

import SwiftUI
import CoreData

struct ContentView: View {

    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(sortDescriptors: [NSSortDescriptor(keyPath: \Book.nbOfPage, ascending: true)], animation: .default)
    private var books: FetchedResults<Book>

    @FetchRequest(sortDescriptors: [NSSortDescriptor(keyPath: \Author.lastName, ascending: true)], animation: .default)
    private var authors: FetchedResults<Author>


    var body: some View {
        TabView {
            NavigationView {
                List {
                    ForEach(books) { item in
                        Text("Item at \(item.title ?? "")!")
                    }
                    .onDelete(perform: deleteItems)
                }
                .toolbar {
                    Button(action: addItem) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            }
            NavigationView {
                List {
                    ForEach(authors) { item in
                        Text("Item at \(item.lastName ?? "")!")
                    }
                    .onDelete(perform: deleteItems)
                }
            }
        }
    }

    private func addItem() {
        withAnimation {
            let book = Book(context: viewContext)
            book.title = "De la Terre à la Lune"
            book.nbOfPage = 42

            let jVerne = Author(context: viewContext)
            jVerne.firstName = "Jules"
            jVerne.lastName = "Verne"

            book.author = jVerne

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            offsets.map { books[$0] }.forEach(viewContext.delete)

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
