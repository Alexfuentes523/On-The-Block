//
//  ContentView.swift
//  nopalesapp
//
//  Created by Cameron Johnson on 1/31/23.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color(.gray)
                .scaledToFill()
                .ignoresSafeArea()
            VStack {
            
                HStack{
                    Image("blm Barber")
                        .padding()
                        .scaledToFit()
                        .offset(x: -10 ,y: 50)
                    Image("dime")
                        .padding()
                        .scaledToFit()
                }
                HStack {
                    Image("thecity")
                        .padding()
                    Image("")
                }
                
                
                
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
