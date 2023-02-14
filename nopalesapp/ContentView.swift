//
//  ContentView.swift
//  nopalesapp
//
//  Created by Cameron Johnson on 1/31/23.
//
import SwiftUI

struct ContentView: View {
//    let gridItems = [
//        CamGridItem(height:450, imgString: "BLM Barber"),
//        CamGridItem(height:250, imgString: "detroitvseverybody"),
//        CamGridItem(height:300, imgString: "dime"),
//        CamGridItem(height:320, imgString: "thecity"),
//        CamGridItem(height:750, imgString: "warehouse"),
//        CamGridItem(height:450, imgString: "women"),
//        CamGridItem(height:450, imgString: "storefront1"),
//        CamGridItem(height:250, imgString: "storefront2"),
//        CamGridItem(height:200, imgString: "storefront3"),
//        CamGridItem(height:220, imgString: "storefront4"),
//        CamGridItem(height:450, imgString: "storefront5"),
//        CamGridItem(height:450, imgString: "storefront6")
//        
//    ]
    var body: some View {
        NavigationView {
            
        
            
//        var gridItems = [GridItem]
//        for i in 0 ..< 30 {
//            let randomHeight = CGFloat.random(in: 100 ... 400)
//            gridItems.append(GridItem(height: randomHeight, title: String(i)))
//        }
        let eggShell = #colorLiteral(red: 0.9302913547, green: 0.9253246188, blue: 0.916793704, alpha: 1)
        ZStack {
            
            Color(eggShell)
                .ignoresSafeArea()
            
            
            
            
            
            
            VStack {
                
                HStack(alignment: .center, spacing: 50) {
                    Image(systemName: "plus")
                        .padding()
                    Text("ON THE BLOCK")
                        .font(.headline)
                        .padding()
                    Image(systemName:"magnifyingglass")
                        .padding()
                    
                }
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .center, spacing: 25) {
                        VStack {
                            Image(systemName: "cup.and.saucer.fill")
                                .padding(0.5) // spacing between the symbol and text
                            Text("Coffee Shop")
                                .font(.system(size: 7))
                        }
                        VStack {
                            Image(systemName: "cup.and.saucer.fill")
                                .padding(0.5) // spacing between the symbol and text
                            Text("Coffee Shop")
                                .font(.system(size: 7))
                        }
                        VStack {
                            Image(systemName: "cup.and.saucer.fill")
                                .padding(0.5) // spacing between the symbol and text
                            Text("Coffee Shop")
                                .font(.system(size: 7))
                        }
                        .padding(0.4)
                        VStack {
                            Image(systemName: "birthday.cake.fill")
                                .padding(0.5) // spacing between the symbol and text
                            Text("Desserts")
                                .font(.system(size: 7))
                        }
                        .padding(0.4)
                        VStack {
                            Image(systemName: "eyebrow")
                                .padding(0.5) // spacing between the symbol and text
                            Text("Salon")
                                .font(.system(size: 7))
                        }
                        .padding(0.4)
                        VStack {
                            Image(systemName: "takeoutbag.and.cup.and.straw.fill")
                                .padding(0.5) // spacing between the symbol and text
                            Text("Takeout")
                                .font(.system(size: 7))
                        }
                        .padding(0.4)
                        VStack {
                            Image(systemName: "wrench.adjustable.fill")
                                .padding(0.5) // spacing between the symbol and text
                            Text("Repair")
                                .font(.system(size: 7))
                        }
                        .padding(0.4)
                        VStack {
                            Image(systemName: "fork.knife.circle.fill")
                                .padding(0.5) // spacing between the symbol and text
                            Text("Restaruant")
                                .font(.system(size: 7))
                        }
                        
                        .padding(0.4)
                    }
                    
                    
                }
                    
                ScrollView(showsIndicators: false) {
                    CoryGrid()
                        
                                        


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
    
}
