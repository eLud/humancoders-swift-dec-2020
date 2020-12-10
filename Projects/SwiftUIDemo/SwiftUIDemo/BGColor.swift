//
//  BGColor.swift
//  SwiftUIDemo
//
//  Created by Ludovic Ollagnier on 10/12/2020.
//

import SwiftUI

struct BGColor: View {

    // Couleur sont des vues
    @State private var red = 0.0
    @State private var green = 0.0
    @State private var blue = 0.0

    var body: some View {
        VStack {
            Color(red: red/255, green: green/255, blue: blue/255)
                .edgesIgnoringSafeArea(.top)
            HStack {
                SliderView(colorName: "Red", colorValue: $red)
                SliderView(colorName: "Green", colorValue: $green)
                SliderView(colorName: "Blue", colorValue: $blue)
            }
        }
    }
}

struct SliderView: View {

    let colorName: String
    @Binding var colorValue: Double

    var body: some View {
        VStack {
            Slider(value: $colorValue, in: 0...255, minimumValueLabel: Text("0"), maximumValueLabel: Text("255")) {
                Text("")
            }
            Text("\(colorName): \(Int(colorValue))")
        }
    }
}

struct BGColor_Previews: PreviewProvider {
    static var previews: some View {
        BGColor()
    }
}
