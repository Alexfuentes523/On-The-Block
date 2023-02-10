//
//  EditBusinessView.swift
//  nopalesapp
//
//  Created by Abe Molina on 2/7/23.
//

import MapKit
import SwiftUI

struct EditBusinessView: View {
    
    //    Background color
    var eggShell = #colorLiteral(red: 0.9302913547, green: 0.9253246188, blue: 0.916793704, alpha: 1)
    
    //    Map Variable
    @State private var region =  MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 42.3309, longitude: -83.0479), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    
    //    Button Variables
    @State private var showImagePicker = false
    @State private var selectedImage: UIImage?
    @State private var selectedImages = [UIImage]()
    @State private var selectedImage2: UIImage?
    @State private var profileImage: Image?
    @State private var profileImage2: Image?
    
    @State private var businessName = "Enter name here"
    
    var body: some View {
        NavigationView {
            ZStack {
                
                Color(eggShell)
                    .ignoresSafeArea()
                
                ScrollView {
                    VStack {
                  
                            //                    Editable text
                            Text("Enter name here")                                .font(.system(size: 40))
                                .padding()
                        
                        
                        //                    Image Picker Button // makes the photos editable
                        Button {
                            showImagePicker.toggle()
                        } label: {
                            if let profileImage = profileImage {
                                profileImage
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 420, height: 800)
                                    .border(.black)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                            } else {
                                RoundedRectangle(cornerRadius: 8)
                                    .foregroundColor(.gray)
                                    .frame(width: 420, height: 800)
                            }
                        }
                        .sheet(isPresented: $showImagePicker, onDismiss: loadImage) {
                            ImagePicker(selectedImage: $selectedImage)
                        }
                        
                        
                        
                        //                    Second Image Picker Button // makes second photo editable
                        HStack {
                            
                            Button {
                                showImagePicker.toggle()
                            } label: {
                                if let profileImage = profileImage {
                                    profileImage
                                        .resizable()
                                        .frame(width: 210, height: 300)
                                        .border(.black)
                                        .clipShape(RoundedRectangle(cornerRadius: 8))
                                        .position(x: 95, y: 153)
                                        .padding()
                                } else {
                                    RoundedRectangle(cornerRadius: 8)
                                        .foregroundColor(.gray)
                                        .frame(width: 210, height: 300)
                                        .position(x: 95, y: 153)
                                        .padding()
                                }
                            }
                            .sheet(isPresented: $showImagePicker, onDismiss: loadImage) {
                                ImagePicker(selectedImage: $selectedImage)
                            }
                            
                            
                            Text("Dime store is a store that sells store things for stores that support stores inside of stores, these stores pride themsevles designing their stores with dimes as it represents them as a dime store that supports stores that support outside stores outside of stores inside of bigger stores to store things in storage.")
                                .padding()
                        }
                        
                        Map(coordinateRegion: $region)
                            .frame(width: 420, height: 180)
                            .border(.black)
                            .cornerRadius(8)
                        
                        Divider()
                            .frame(height: 1)
                            .overlay(.black)
                        
                        
                    }
                }
            }
        }
    }
    
//    Func that loads image in place of original template/picture
    func loadImage() {
        guard let selectedImage = selectedImage else { return }
        profileImage = Image(uiImage: selectedImage)
    }
    
}

struct EditBusinessView_Previews: PreviewProvider {
    static var previews: some View {
        EditBusinessView()
    }
}
