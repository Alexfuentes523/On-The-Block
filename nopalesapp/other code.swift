//
//  other code.swift
//  nopalesapp
//
//  Created by Joshua M. Escobedo on 2/6/23.
//


import SwiftUI

struct VerifyScreeenView: View {
    @State var textFieldText: String = ""
    var body: some View {
        NavigationView {
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill((Color(red: 0.211, green: 0.138, blue: 0.095)))
                    .frame(width: 350, height: 400)
                    .overlay(
                        
                        VStack {
                                Text("Verify Your business here")
                                    .font(.system(size: 30))
                                    .foregroundColor(.white)
                                    .offset(y:20)
                                TextField("", text: $textFieldText)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .padding()
                                    .font(.headline)
                                Spacer()
                            }
                            )
            }
        }
    }
                        
    
    struct nopal_view_Previews: PreviewProvider {
        static var previews: some View {
            VerifyScreeenView()
        }
    }
    
}
