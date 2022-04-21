//
//  ContentView.swift
//  Color Picker
//
//  Created by Shane Grim on 4/21/22.
//

import SwiftUI



struct ContentView: View {
    
    @State var red = 1.0
    
    var body: some View {
        VStack {
            Text("Color Picker")
                .font(.title)
                .fontWeight(.light)
                .padding()
            Image(systemName: "gamecontroller.fill")
                .foregroundColor(Color(red: red, green: 0.0, blue: 0, opacity: 1.0))
            
            HStack {
                ColorSwatch()
                //created a new file and added it to this to cut down on the amount of code in this single file
                Slider(value: $red, in: 0...1, step: 0.1)
                    .padding(.horizontal, 25.0)
            }
        }
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
