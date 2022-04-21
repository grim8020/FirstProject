//
//  ContentView.swift
//  Multiple Views in SwiftUI
//
//  Created by Shane Grim on 4/21/22.
//

import SwiftUI

struct ContentView: View {
    
    //var data: WeatherData
    
    var body: some View {
        
        //NavigationView is the view that controlls other views
        NavigationView {
            
            //gives the nav view a title
            
            //create a list, get the data from the DataModel file that we created, and for the id use the id field that we created.
            List(DataModel.data, id: \.self) { object in
                //block in the curly braces where we can reference our object (WeatherData object) - it will take the data and go through it one by one
                
                
                HStack {
                    Image(systemName: object.icon)
                        .foregroundColor(object.color)
                    Text("\(object.high)º")
                        .foregroundColor(.red)
                    Text("\(object.low)º")
                        .foregroundColor(.blue)
                   //makes it that you can click on each individual list item for a more detailed view in another window with a back button
                    NavigationLink(object.day, destination: DetailView(data: object))
                }
                .navigationTitle("Spring Grove")
            }
            
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
