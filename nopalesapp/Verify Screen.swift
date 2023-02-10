//
//  Verify Screen.swift
//  nopalesapp
//
//  Created by Joshua M. Escobedo on 2/9/23.
//

import Foundation
import SwiftUI

struct VerifyScreenView: View {
    @State var FullName: String = ""
    @State var BusinessName: String = ""
    @State var BusinessEmail: String = ""
    @State var BusinessCategory: String = ""
    
    var body: some View {
        NavigationStack {
            NavigationView {
                
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .fill((Color(red: 0.211, green: 0.138, blue: 0.095)))
                        .frame(width: 350, height: 450)
                        .overlay(
                            
                            VStack {
                                
                                Text("Verify Your Business Here")
                                    .font(.system(size: 30))
                                    .foregroundColor(.white)
                                    .offset(y:65)
                                
                                Text("Full Name")
                                    .offset(y:87)
                                    .padding(-20)
                                    .foregroundColor(.white)
                                    .offset(x:-118)
                                TextField("", text: $FullName)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .padding()
                                    .offset(y:65)
                                
                                Text("Business Name")
                                    .offset(y:52)
                                    .foregroundColor(.white)
                                    .offset(x:-98)
                                TextField("", text: $BusinessName)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .padding()
                                //.font(.headline)
                                    .offset(y:26)
                                
                                Text("Business Email")
                                    .offset(y:14)
                                    .offset(x:-100)
                                    .foregroundColor(.white)
                                TextField("", text: $BusinessEmail)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .padding()
                                    .offset(y:-12)
                                
                                Text("Business Category")
                                    .foregroundColor(.white)
                                    .offset(y:-25)
                                    .offset(x:-88)
                                TextField("", text: $BusinessCategory)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .padding()
                                    .offset(y:-50)
                                
                                Text("Submit")
                                    .offset(y:-58)
                                    .foregroundColor(.white)
                                    .font(.system(size:35))
                                
                                //Spacer()
                            }
                        )
                }
            }
        }
    }
}
                            
    struct VerifyScreen_Previews: PreviewProvider {
        static var previews: some View {
            VerifyScreeenView()
        }
    }

