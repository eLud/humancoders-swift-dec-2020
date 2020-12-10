//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Ludovic Ollagnier on 10/12/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .trailing) {
            Text("Hello Swift")
                .bold()
                .italic()
            Text("Hello SwiftUI")
                .foregroundColor(.red)
                .padding()
                .background(Color.green)
            Button("Continue") {

            }
            .corneredBackground(backgroundColor: .yellow, foreGroundColor: .black)
        }
    }
}

extension View {
    func corneredBackground(backgroundColor: Color = .pink, foreGroundColor: Color = .white) -> some View {
        return self.foregroundColor(foreGroundColor)
            .font(.headline)
            .padding(.horizontal, 60)
            .padding(.vertical, 10)
            .background(backgroundColor)
            .cornerRadius(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
