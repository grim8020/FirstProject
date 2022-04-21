//
//  ColorSwatch.swift
//  Color Picker
//
//  Created by Shane Grim on 4/21/22.
//

import SwiftUI

struct ColorSwatch: View {
    
    var color: Color
    
    var body: some View {
        Image(systemName: "circle.fill")
            .padding(.leading)
            .foregroundColor(color)
    }
}

struct ColorSwatch_Previews: PreviewProvider {
    static var previews: some View {
        ColorSwatch(color: .red)
    }
}
