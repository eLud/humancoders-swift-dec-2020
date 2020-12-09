//
//  UITextField+Extensions.swift
//  BookLibrary
//
//  Created by Ludovic Ollagnier on 08/12/2020.
//

import UIKit

extension UITextField {

    var intValue: Int? {
        get {
            guard let text = text else { return nil }
            let intValue = Int(text)
            return intValue
        }

        set {
            guard let intValue = newValue else { return }
            text = "\(intValue)"
        }
    }

    var doubleValue: Double? {
        guard let text = text else { return nil }
        let value = Double(text)
        return value
    }

}
