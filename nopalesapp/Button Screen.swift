//
//  Button Screen.swift
//  nopalesapp
//
//  Created by Joshua M. Escobedo on 2/3/23.
//

import Foundation
import SwiftUI
struct ButtonScreen: View {
    var body: some View {
        NavigationView {
            NavigationStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .fill((Color(red: 0.211, green: 0.138, blue: 0.095)))
                        .frame(width: 350, height: 400)
                        .overlay(
                    
                            VStack{
                                
                                
                                Text("Are you looking to showcase your business?")
                                //.font(.system(size: 30))
                                    .font(.largeTitle)
                                    .foregroundColor(.white)
                                    .offset(y: -40)
                                    
                                NavigationLink("YES") {}
                                    .buttonStyle(.bordered)
                                    .padding(9)
                                NavigationLink("NO") {}
                                    .buttonStyle(.bordered)
                                
                            }
                        )
                }
                }
            }
                VStack {
                    Button("Button 1") {}
                        .buttonStyle(.bordered)
                    Button("Button 2") {}
                        .buttonStyle(.bordered)
                }
    }
}
struct ButtonScreen_Previews: PreviewProvider {
    static var previews: some View {
        ButtonScreen()
    }
}
