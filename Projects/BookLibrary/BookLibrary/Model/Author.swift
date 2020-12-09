//
//  Author.swift
//  BookLibrary
//
//  Created by Ludovic Ollagnier on 08/12/2020.
//

import Foundation

struct Author: Hashable {
    let firstName: String
    let middleName: String?
    let lastName: String

    //Get-only computed property
    var fullName: String {
        return firstName + " " + lastName
    }

    init(firstName: String, lastName: String) {
        self.init(firstName: firstName, lastName: lastName, middleName: nil)
    }

    init(firstName: String, lastName: String, middleName: String? = nil) {
        self.firstName = firstName
        self.lastName = lastName
        self.middleName = middleName
    }
}
