//
//  GlobalState.swift
//  swiftUI-Calculator
//
//  Created by Shaan  on 2/8/21.
//

import Foundation


class GlobalState: ObservableObject {
    @Published var display = "0"
    
    var storedValue: Double? = nil
    var operation: CalculatorKey? = nil
    var beginInput: Bool = true
    
    func keyPressed(key: CalculatorKey) {
        switch key {
        case .zero, .one, .two, .three, .four, .five, .six, .seven, .eight, .nine:
            if beginInput {
                display = key.rawValue
                beginInput = false
            } else {
                display = display + key.rawValue
            }
            
        case .plus, .minus, .multiply, .divide:
            if storedValue == nil {
                storedValue = Double(display)
                operation = key
                beginInput = true
            } else {
                if beginInput {
                    operation = key
                } else {
                    calculate()
                    beginInput = true
                    operation = key
                }
            }
                
        case .dot:
            if display.contains(CalculatorKey.dot.rawValue) {
                break
            }
            display = display + CalculatorKey.dot.rawValue
        
        case .plusMinus:
            if display[0] == CalculatorKey.minus.rawValue {
                display.remove(at: display.startIndex)
                
            } else {
                display = CalculatorKey.minus.rawValue + display
            }
            
        case .allClear, .clear:
            display = CalculatorKey.zero.rawValue
        
        default:
            break
        }
    }
    
    func calculate() {
        let a = storedValue ?? 0
        let b = Double(display) ?? 0
        var answer: Double = 0
        
        switch operation {
        case .plus:
            answer = a + b
        case .minus:
            answer = a - b
        case .multiply:
            answer = a * b
        case .divide:
            answer = a / b
        default:
            break
        }
        storedValue = answer
        display = String(answer)
    }
}
