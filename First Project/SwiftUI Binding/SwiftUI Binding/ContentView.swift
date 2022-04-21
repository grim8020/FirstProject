//
//  ContentView.swift
//  SwiftUI Binding
//
//  Created by Shane Grim on 4/21/22.
//

import SwiftUI

struct ContentView: View {
    //@State is used for changing user input
    @State var name = ""
    
    var body: some View {
        
        VStack {
            TextField("Name", text: $name)
                .padding(.all)
                .frame(width: 300.0) //binding variable from @State - this bound variable will update as the text field is updated.
            Text("Hello, \(name)!")
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
