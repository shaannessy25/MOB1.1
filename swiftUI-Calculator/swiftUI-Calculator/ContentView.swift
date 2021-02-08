//
//  ContentView.swift
//  swiftUI-Calculator
//
//  Created by Shaan  on 2/8/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack(spacing: 4) {
                HStack() {
                    Text("3.14")
                        .font(.system(size:48))
                        .foregroundColor(.white)
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .bottomTrailing)
                        .padding()
                }
                HStack(spacing: 4) {
                    self.makeButton(label: "7")
                    self.makeButton(label: "8")
                    self.makeButton(label: "9")
                    self.makeButton(label: "X")
                }
                
                HStack(spacing: 4) {
                    self.makeButton(label: "4")
                    self.makeButton(label: "5")
                    self.makeButton(label: "6")
                    self.makeButton(label: "+")
                }
                
                HStack(spacing: 4) {
                    self.makeButton(label: "1")
                    self.makeButton(label: "2")
                    self.makeButton(label: "3")
                    self.makeButton(label: "-")
                }
                
                HStack(spacing: 4) {
                    self.makeButton(label: "0", width: 148)
                    self.makeButton(label: ".")
                    self.makeButton(label: "=")
                }
            }
        }
    }
    func makeButton(label: String = "0", width: CGFloat = 70, height: CGFloat = 70) -> some View {
        return AnyView(Button(action: {}, label : {
            Text(label)
                .frame(width: width, height: height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .background(Color.orange)
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
