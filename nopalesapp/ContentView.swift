//
//  ContentView.swift
//  nopalesapp
//
//  Created by Cameron Johnson on 1/31/23.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        var eggShell = #colorLiteral(red: 0.9302913547, green: 0.9253246188, blue: 0.916793704, alpha: 1)
        ZStack {
            
            Color(eggShell)
                .ignoresSafeArea()
            
            
            
            
            ScrollView {
                
                VStack {
                    
                    HStack {
                        Image(systemName: "plus")
                            .padding()
                        Text("ON THE BLOCK")
                            .padding()
                        Image(systemName:"magnifyingglass")
                            .padding()
                        
                    }
                    
                    HStack {
                        VStack {
                            Image(systemName: "cup.and.saucer.fill")
                                .padding(0.5)
                            Text("Coffee Shop")
                                .font(.system(size: 7))
                        }
                        .padding(0.4)
                        VStack {
                            Image(systemName: "birthday.cake.fill")
                                .padding(0.5)
                            Text("Desserts")
                                .font(.system(size: 7))
                        }
                        .padding(0.4)
                        VStack {
                            Image(systemName: "eyebrow")
                                .padding(0.5)
                            Text("Salon")
                                .font(.system(size: 7))
                        }
                        .padding(0.4)
                        VStack {
                            Image(systemName: "takeoutbag.and.cup.and.straw.fill")
                                .padding(0.5)
                            Text("Takeout")
                                .font(.system(size: 7))
                        }
                        .padding(0.4)
                        VStack {
                            Image(systemName: "wrench.adjustable.fill")
                                .padding(0.5)
                            Text("Repair")
                                .font(.system(size: 7))
                        }
                        .padding(0.4)
                        VStack {
                            Image(systemName: "fork.knife.circle.fill")
                                .padding(0.5)
                            Text("Restaruant")
                                .font(.system(size: 7))
                        }
                        .padding(0.4)
                    }
                    
                    
                    }
                    //HStack{
                    //Image("blm Barber")
                    //.padding()
                    //.scaledToFit()
                    //.offset(x: -10 ,y: 50)
                    //Image("dime")
                    //.padding()
                    //.scaledToFit()
                }
                //                HStack {
                //                    Image("thecity")
                //                        .padding()
                //                    Image("")
                //                }
            }
            
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    

