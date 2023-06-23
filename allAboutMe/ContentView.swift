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
                    .padding()
                Text("My name is Spirit Kaufmann, and here are some facts about me.")
                    .padding(.top, 1.0)
                
                Image("penza")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(20)
                
                Text("I adore my cat, Penza <3")
                    .padding(10)
                
                Text("\(funFact)")
                
                Button("Click to learn more") {
                action: do { self.switchFact() }
                }
                .buttonStyle(.bordered)
                .tint(.pink)
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
