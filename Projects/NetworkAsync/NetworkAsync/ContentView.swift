//
//  ContentView.swift
//  NetworkAsync
//
//  Created by Ludovic Ollagnier on 11/12/2020.
//

import SwiftUI

struct ContentView: View {

    @State private var image: Image?

    var body: some View {
        VStack {
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(Color("myBlue"))
            if let image = image {
                image
                    .resizable()
                    .frame(width: 200, height: 200)
            }
            Button("Download") {
                NetworkManager.shared.requestImage { (image) in
                    guard let image = image else { return }
                    self.image = Image(uiImage: image)
                }
            }
            Text("Hello")
                .customTitleStyle()
            Text("BUTTON_CLOSE_TITLE", comment: "This is for the close button")
        }
    }
}

extension View {
    func customTitleStyle() -> some View {
        return self
            .font(.title)
            .foregroundColor(.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
