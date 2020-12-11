//
//  ContentView.swift
//  Geoloc
//
//  Created by Ludovic Ollagnier on 11/12/2020.
//

import SwiftUI

struct ContentView: View {

    @StateObject var location = Location()

    var body: some View {
        VStack {
            Text("\(location.latitude)")
            Text("\(location.longitude)")
            Button("Start geoloc") {
                location.getLocation()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
