//
//  ContentView.swift
//  MYTest
//
//  Created by Bill Martensson on 2020-12-02.
//

import SwiftUI

struct ContentView: View {
    
    @State var resultString = ""
    @State var enteredNumber = ""
    var body: some View {
        VStack {
            Text(resultString)
                .padding()
                .accessibilityIdentifier("resulttext")
            
            TextField("Siffra", text: $enteredNumber).padding()
            
            
            Button(action: {
                resultString = Person().oddEven(numberText: enteredNumber)
            }) {
                Text("Tryck")
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
