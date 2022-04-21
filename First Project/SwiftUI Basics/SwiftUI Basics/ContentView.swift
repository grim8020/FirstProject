//
//  ContentView.swift
//  SwiftUI Basics
//
//  Created by Shane Grim on 4/20/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //can hightlight from Text to the last parenthesis of padding - right click - and then choose a VStack or ZStack
        VStack(alignment: .center) {
            Text("Weather")
                .font(.largeTitle)
                .foregroundColor(Color.black)
                .padding(.bottom, 50.0)
    
            
            HStack(alignment: .center) {
                Spacer()
                Image(systemName: "sun.max.fill")
                //need to add the resizable() and the frame to change the image size
                    .resizable()
                    .foregroundColor(Color.orange)
                    .frame(width: 40.0, height: 40.0)
                Text("Monday")
                    .font(.body)
                    .fontWeight(.thin)
                    .foregroundColor(Color.black)
                Spacer()
            }
            
            HStack() {
                Spacer()
                Image(systemName: "cloud.fill")
                //need to add the resizable() and the frame to change the image size
                    .resizable()
                    .foregroundColor(Color.orange)
                    .frame(width: 40.0, height: 30.0)
                Text("Tuesday")
                    .font(.body)
                    .fontWeight(.thin)
                    .foregroundColor(Color.black)
                Spacer()
            }
            
            HStack() {
                Spacer()
                Image(systemName: "cloud.bolt.fill")
                //need to add the resizable() and the frame to change the image size
                    .resizable()
                    .foregroundColor(Color.gray)
                    .frame(width: 40.0, height: 40.0)
                Text("Wednesday")
                    .font(.body)
                    .fontWeight(.thin)
                    .foregroundColor(Color.black)
                Spacer()
            }
            
            HStack() {
                Spacer()
                Image(systemName: "cloud.fill")
                //need to add the resizable() and the frame to change the image size
                    .resizable()
                    .foregroundColor(Color.orange)
                    .frame(width: 40.0, height: 30.0)
                Text("Thursday")
                    .font(.body)
                    .fontWeight(.thin)
                    .foregroundColor(Color.black)
                Spacer()
            }
            
            HStack() {
                Spacer()
                Image(systemName: "cloud.drizzle.fill")
                //need to add the resizable() and the frame to change the image size
                    .resizable()
                    .foregroundColor(Color.orange)
                    .frame(width: 40.0, height: 40.0)
                Text("Friday")
                    .font(.body)
                    .fontWeight(.thin)
                    .foregroundColor(Color.black)
                Spacer()
            }
            
            HStack() {
                Spacer()
                Image(systemName: "sun.max.fill")
                //need to add the resizable() and the frame to change the image size
                    .resizable()
                    .foregroundColor(Color.orange)
                    .frame(width: 40.0, height: 40.0)
                Text("Saturday")
                    .font(.body)
                    .fontWeight(.thin)
                    .foregroundColor(Color.black)
                Spacer()
            }
            
            HStack() {
                Spacer()
                Image(systemName: "sun.max.fill")
                //need to add the resizable() and the frame to change the image size
                    .resizable()
                    .foregroundColor(Color.orange)
                    .frame(width: 40.0, height: 40.0)
                Text("Sunday")
                    .font(.body)
                    .fontWeight(.thin)
                    .foregroundColor(Color.black)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
