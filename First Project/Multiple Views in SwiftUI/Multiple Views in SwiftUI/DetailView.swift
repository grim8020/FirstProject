//
//  DetailView.swift
//  Multiple Views in SwiftUI
//
//  Created by Shane Grim on 4/21/22.
//

import SwiftUI

struct DetailView: View {
    
    var data: WeatherData
    @State var isPopoverShowing = false
    
    var body: some View {
        VStack {
            Text(data.day)
                .padding(0.5)
            Text("H \(data.high)ºF  L \(data.low)ºF")
                .padding(0.5)
            Image(systemName: data.icon)
                .padding(0.5)
                .foregroundColor(data.color)
            Button("Show Popover") {
                isPopoverShowing = true
            }
            .padding()
            .sheet(isPresented: $isPopoverShowing) {
                Text("H \(data.high)ºF  L \(data.low)ºF")
                Image(systemName: data.icon)
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(data.color)
                
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(data: DataModel.data[0])
    }
}
