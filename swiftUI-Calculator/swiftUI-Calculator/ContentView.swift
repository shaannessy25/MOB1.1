//
//  ContentView.swift
//  swiftUI-Calculator
//
//  Created by Shaan  on 2/8/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var env: GlobalState
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack(spacing: 4) {
                HStack() {
                    Text(env.display)
                        .font(.system(size:48))
                        .foregroundColor(.white)
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .bottomTrailing)
                        .padding()
                }
                
                HStack(spacing: 4) {
                    self.makeButton(key: .allClear, backColor: Color(white: 0.5, opacity: 1.0))
                    self.makeButton(key: .plusMinus, backColor: Color(white: 0.5, opacity: 1.0))
                    self.makeButton(key: .percent, backColor: Color(white: 0.5, opacity: 1.0))
                    self.makeButton(key: .divide, backColor: .orange)
                }
                HStack(spacing: 4) {
                    self.makeButton(key: .seven)
                    self.makeButton(key: .eight)
                    self.makeButton(key: .nine)
                    self.makeButton(key: .multiply, backColor: .orange)
                }
                
                HStack(spacing: 4) {
                    self.makeButton(key: .four)
                    self.makeButton(key: .five)
                    self.makeButton(key: .six)
                    self.makeButton(key: .plus, backColor: .orange)
                }
                
                HStack(spacing: 4) {
                    self.makeButton(key: .one)
                    self.makeButton(key: .two)
                    self.makeButton(key: .three)
                    self.makeButton(key: .minus, backColor: .orange)
                }
                
                HStack(spacing: 4) {
                    self.makeButton(key: .zero, width: 148)
                    self.makeButton(key: .dot)
                    self.makeButton(key: .equal, backColor: .orange)
                }
                Spacer(minLength: 10)
            }
        }
    }
    func makeButton(key: CalculatorKey = .zero, width: CGFloat = 70, height: CGFloat = 70,
                    textColor: Color = .white, backColor: Color = Color(white: 0.2)) -> some View {
        return AnyView(
            Button(action: {
                env.keyPressed(key: key)
            }, label : {
            Text(key.rawValue)
                .frame(width: width, height: height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(textColor)
                .background(backColor)
                .cornerRadius(height / 2)
                .font(.title)
                .padding(2)
        }))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
