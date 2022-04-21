//
//  ContentView.swift
//  Color Picker
//
//  Created by Shane Grim on 4/21/22.
//

import SwiftUI



struct ContentView: View {
    
    @State var red = 1.0
    @State var green = 1.0
    @State var blue = 1.0
    
    var body: some View {
        VStack {
            Text("Color Picker")
                .font(.title)
                .fontWeight(.light)
                .padding()
            Image(systemName: "gamecontroller.fill")
                .resizable()
                .frame(width: 100, height: 75)
                .foregroundColor(Color(red: red, green: green, blue: blue, opacity: 1.0))
            ColorSlider(value: $red, color: .red)
            ColorSlider(value: $blue, color: .blue)
            ColorSlider(value: $green, color: .green)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
