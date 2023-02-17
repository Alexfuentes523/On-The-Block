//
//  ContentView.swift
//  nopalesapp
//
//  Created by Cameron Johnson on 1/31/23.
//
import SwiftUI

struct ContentView: View {
    
    @State var selected: Store?
    @State var store:Store
    
    
    var body: some View {
        NavigationView {
            
//            let eggShell = #colorLiteral(red: 0.9302913547, green: 0.9253246188, blue: 0.916793704, alpha: 1)
            ZStack {
                
                Color("mainColor")
                    .ignoresSafeArea()
                
                VStack {
                    
                    HStack(alignment: .center, spacing: 50) {
                        Image(systemName: "plus")
                            .foregroundColor(.primary)
                            .padding()
                        
                        //                    Nav Link that goes to edit business view
                        NavigationLink {
                            EditBusinessView()
                        } label: {
                            Text("ON THE BLOCK")
                                .foregroundColor(.primary)
                                .font(.headline)
                                .padding()
                        }
                        
                        Image(systemName:"magnifyingglass")
                            .foregroundColor(.primary)
                            .padding()
                        
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .center, spacing: 25) {
                            VStack {
                                
                                Image(systemName: "tshirt.fill")
                                    .foregroundColor(.primary)
                                    .padding(0.5) // spacing between the symbol and text
                                Text("Clothing")
                                    .foregroundColor(.primary)
                                    .font(.system(size: 7))
                            }
                            VStack {
                                Image(systemName: "cup.and.saucer.fill")
                                    .foregroundColor(.primary)
                                    .padding(0.5) // spacing between the symbol and text
                                Text("Coffee Shop")
                                    .foregroundColor(.primary)
                                    .font(.system(size: 7))
                            }
                            .padding(0.4)
                            VStack {
                                Image(systemName: "birthday.cake.fill")
                                    .foregroundColor(.primary)
                                    .padding(0.5) // spacing between the symbol and text
                                Text("Desserts")
                                    .foregroundColor(.primary)
                                    .font(.system(size: 7))
                            }
                            .padding(0.4)
                            VStack {
                                Image(systemName: "eyebrow")
                                    .foregroundColor(.primary)
                                    .padding(0.5) // spacing between the symbol and text
                                Text("Salon")
                                    .foregroundColor(.primary)
                                    .font(.system(size: 7))
                            }
                            .padding(0.4)
                            VStack {
                                Image(systemName: "takeoutbag.and.cup.and.straw.fill")
                                    .foregroundColor(.primary)
                                    .padding(0.5) // spacing between the symbol and text
                                Text("Takeout")
                                    .foregroundColor(.primary)
                                    .font(.system(size: 7))
                            }
                            .padding(0.4)
                            VStack {
                                Image(systemName: "wrench.adjustable.fill")
                                    .foregroundColor(.primary)
                                    .padding(0.5) // spacing between the symbol and text
                                Text("Repair")
                                    .foregroundColor(.primary)
                                    .font(.system(size: 7))
                            }
                            .padding(0.4)
                            VStack {
                                Image(systemName: "fork.knife.circle.fill")
                                    .foregroundColor(.primary)
                                    .padding(0.5) // spacing between the symbol and text
                                Text("Restaruant")
                                    .foregroundColor(.primary)
                                    .font(.system(size: 7))
                            }
                            
                            .padding(0.4)
                        }
                        
                        
                    }
                    
                    
                    //business items
                    ScrollView(showsIndicators: false) {
                        CoryGrid()
                    }
                    
                }
            }
        }
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView(store: .example)
        }
    }
    
}
