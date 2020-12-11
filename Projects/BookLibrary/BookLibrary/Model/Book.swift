//
//  Book.swift
//  BookLibrary
//
//  Created by Ludovic Ollagnier on 08/12/2020.
//

import Foundation

struct Book: Hashable, Identifiable, Codable {

    //Raw Value (String, Character, Int, Double/Float)
    //Associated Values
    enum Style: Int, CaseIterable, Identifiable, Codable {
        case police
        case sciFi
        case romance
        case thriller
        case educational

        var title: String {
            switch self {
            case .police:
                return "Police"
            case .sciFi:
                return "SF"
            case .romance:
                return "Romance"
            case .thriller:
                return "Thriller"
            case .educational:
                return "Educational"
            }
        }

        var id: Style {
            return self
        }
    }
    
    static var standardPagesNumber: Int = 200

    let title: String
    let nbOfPages: Int
    let isPocket: Bool

    let style: Style

    var isRead: Bool
    let author: Author?
    let imageURL: URL?
    //Date

    var id = UUID()
}
