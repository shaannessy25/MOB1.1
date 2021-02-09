//
//  GlobalState.swift
//  swiftUI-Calculator
//
//  Created by Shaan  on 2/8/21.
//

import Foundation


class GlobalState: ObservableObject {
    @Published var display = "0"
    
    func keyPressed(key: CalculatorKey) {
        display = display + key.rawValue
    }
}
