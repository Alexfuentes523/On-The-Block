//
//  ContentView.swift
//  nopalesapp
//
//  Created by Cameron Johnson on 1/31/23.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack{
            
            
            Color(.black)
                .ignoresSafeArea()
            VStack{
                Image("bizboys")
                    .resizable()
                    .scaledToFit()
                    .padding()
                
                //Text("On The Block")
                    //.padding()
                    //.foregroundColor(.brown)
                
                
            }
        }
        
        
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
