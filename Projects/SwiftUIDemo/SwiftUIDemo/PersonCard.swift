//
//  PersonCard.swift
//  SwiftUIDemo
//
//  Created by Ludovic Ollagnier on 10/12/2020.
//

import SwiftUI

struct PersonCard: View {
    var body: some View {
        VStack {
            //Header
            HStack {
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .foregroundColor(.orange)
                    .frame(width: 100, height: 100)
                VStack(alignment: .leading) {
                    Text("Ludovic Ollagnier")
                        .font(.title)
                    Text("France")
                        .font(.title2)
                        .foregroundColor(Color.gray)
                    Text("iOS Dev")
                        .font(.headline)
                        .padding(.top, 20)
                }
            }
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundColor(.gray)
                .padding()
        }
    }
}

struct PersonCard_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PersonCard()
                .preferredColorScheme(.light)
            PersonCard()
                .preferredColorScheme(.dark)
        }

    }
}
