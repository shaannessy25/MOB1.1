//
//  extensions.swift
//  swiftUI-Calculator
//
//  Created by Shaan  on 2/8/21.
//

import Foundation


extension String {
    subscript(i: Int) -> String {
        return String(self[index(startIndex, offsetBy: i)])
    }
}
