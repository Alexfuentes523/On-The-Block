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
                                    .padding([.top], 80)
                                    .offset(y:30)
                                    

                                
                                Text("Full Name")
                                    .padding([.leading],-155)
                                    .foregroundColor(.white)
                                    .offset(y:56)
                                    
                                TextField("", text: $FullName)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .padding()
                                    .offset(y:30)
                                  
                                
                                Text("Business Name")
                                    .foregroundColor(.white)
                                    .padding([.horizontal], -155)
                                    .padding([.vertical])
                                    .offset(y:2)
                                    
                                TextField("", text: $BusinessName)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .padding()
                                    .offset(y:-35)
                                
                                Text("Business Email")
                                    .foregroundColor(.white)
                                    .padding([.horizontal], -155)
                                    .offset(y:-45)
                                TextField("", text: $BusinessEmail)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .padding()
                                    .offset(y:-70)
                                
                                Text("Business Category")
                                    .foregroundColor(.white)
                                    .padding([.horizontal], -155)
                                    .offset(y:-80)
                                TextField("", text: $BusinessCategory)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .padding()
                                    .offset(y:-105)
                                
                                NavigationLink {
                                    EditBusinessView ()
                                } label: {
                                    Text("Submit")
                                }
                                    .foregroundColor(.white)
                                    .font(.system(size:35))
                                    .offset(y:-113)
                                    .padding([.horizontal])
                                
                                
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
            VerifyScreenView()
        }
    }

