//
//  ColorSlider.swift
//  Color Picker
//
//  Created by Shane Grim on 4/21/22.
//

import SwiftUI

struct ColorSlider: View {
    
    @Binding var value: Double
    //used when the @State is in another file but the child file needs to also be able to change the value
    var color: Color
    
    
    var body: some View {
        
            HStack {
                ColorSwatch(color: color)
                //created a new file and added it to this to cut down on the amount of code in this single file
                Slider(value: $value, in: 0...1, step: 0.1)
                    .padding(.horizontal, 25.0)
                    .padding()
        
        }
    }
}

struct ColorSlider_Previews: PreviewProvider {
    @State static var value = 1.0
    //@State static var used becuase we need to create a preview and need a binding variable 
    static var previews: some View {
        ColorSlider(value: $value, color: .blue)
    }
}
