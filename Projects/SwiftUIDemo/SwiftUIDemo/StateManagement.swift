//
//  StateManagement.swift
//  SwiftUIDemo
//
//  Created by Ludovic Ollagnier on 10/12/2020.
//

import SwiftUI

struct StateManagement: View {

    @State private var message: String = ""
    @State private var count: Int = 0
    @State private var value: Float = 0.0
    @State private var didAccceptContract = false

    var body: some View {
        VStack {
            Text(message + " " + "\(count)")
            Button("Push me") {
                count += 1
                message = "Hello SwiftUI!"
            }
            TextField("Message", text: $message)
            Toggle(isOn: $didAccceptContract) {
                Text("Did accept contract")
            }
            Text("\(value)")
            Slider(value: $value, in: 0...100)
        }
    }
}

struct StateManagement_Previews: PreviewProvider {
    static var previews: some View {
        StateManagement()
    }
}
