//
//  ContentView.swift
//  allAboutMe
//
//  Created by Scholar on 6/22/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var funFact = "Would you like to know anything else about me?"
    
    var body: some View {
        ZStack {
            
            Image("e4cfe5")
                .resizable(resizingMode: .stretch)
                .frame(width: 400.0, height: 900.0)
                .ignoresSafeArea()
            
            VStack {
                Text("Hi there!")
                    .font(.title)
                    .padding(.vertical, 10)
                Text("My name is Spirit Kaufmann, and here are some facts about me.")
                    .padding(.horizontal, 30)
                    
                
                Image("penza")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(100)
                    .padding(.horizontal)
                    .padding()
                
                Text("I adore my cat, Penza <3")
                    .padding(5)
                
                Text("\(funFact)")
                
                Button("Click to learn more") {
                action: do { self.switchFact() }
                }
                .buttonStyle(.borderedProminent)
                .tint(Color(hue: 0.56, saturation: 0.438, brightness: 0.851, opacity: 0.55))
                .foregroundColor(Color(hue: 0.378, saturation: 0.349, brightness: 0.602))
                .fontWeight(.bold)
                .padding()
            }
        }
        .padding()
    }
            
        
        func switchFact() {
            funFact = "I am a creative writing major at school."
        }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
