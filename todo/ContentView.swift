//
//  ContentView.swift
//  todo
//
//  Created by Harry Morgan on 01/03/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var text: String = ""
    @State private var enteredTexts: [String] = []
    
    var body: some View {
        VStack {
            List(enteredTexts, id: \.self) { enteredText in
                Text(enteredText)
            }
            
            Spacer()
            
            TextField("Enter task...", text: $text, onCommit: {
                // Append the entered text to the list and clear the text field
                if !text.isEmpty {
                    enteredTexts.append(text)
                    text = ""
                }
            })
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
        }
        
        
    }
}

#Preview {
    ContentView()
}
