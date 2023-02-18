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
    @State private var showImagePicker2 = false
    @State private var selectedImage: UIImage?
    @State private var selectedImages = [UIImage]()
    @State private var selectedImage2: UIImage?
    @State private var profileImage: Image?
    @State private var profileImage2: Image?
    
    //    Text variables
    @State private var title = ""
    @State private var bio = ""
    
    //    TextField Strings
    @State var reviews: String = ""
    @State var buttonText = ""
    
//    Keyboard Done button
    @FocusState var isInputActive: Bool

    var body: some View {
        
        ZStack {
            
            Color("mainColor")
                .ignoresSafeArea()
            
            VStack {
                
                HStack(alignment: .center, spacing: 50) {
                    
                    //                    Nav Link that goes to edit business view
                    
                    TextField("Business Name Here", text: $buttonText)
                        .foregroundColor(.primary)
                        .font(.system(size: 33))
                        .textFieldStyle(.automatic)
                        .multilineTextAlignment(.center)
                        .font(.headline)
                        .padding()
                        .focused($isInputActive)
                }
                
                ScrollView {
                    
                    VStack {
                        
                        Spacer()
                        
                        Button {
                            showImagePicker.toggle()
                        } label: {
                            if let profileImage = profileImage {
                                profileImage
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 420, height: 800)
                                    .border(.black)
                                    .clipShape(RoundedRectangle(cornerRadius: 3))
                            } else {
                                RoundedRectangle(cornerRadius: 3)
                                    .foregroundColor(.gray)
                                    .frame(width: 420, height: 800)
                            }
                        }
                        .sheet(isPresented: $showImagePicker, onDismiss: loadImage) {
                            ImagePicker(selectedImage: $selectedImage)
                        }   .padding(.bottom)
                        
                        
                        
                        //                    Second Image Picker Button // makes second photo editable
                        HStack {
                            
                            //                            Button {
                            //                                showImagePicker.toggle()
                            //                            } label: {
                            //                                if let profileImage = profileImage2 {
                            //                                    profileImage
                            //                                        .resizable()
                            //                                        .frame(width: 210, height: 300)
                            //                                        .border(.black)
                            //                                        .clipShape(RoundedRectangle(cornerRadius: 3))
                            //                                        .position(x: 95, y: 153)
                            //                                        .padding()
                            //                                } else {
                            //                                    RoundedRectangle(cornerRadius: 3)
                            //                                        .foregroundColor(.gray)
                            //                                        .frame(width: 210, height: 300)
                            //                                        .position(x: 95, y: 153)
                            //                                        .padding()
                            //                                }
                            //                            }
                            //                            .sheet(isPresented: $showImagePicker, onDismiss: loadImage2) {
                            //                                ImagePicker2(selectedImage2: $selectedImage2)
                            //                            }
                            VStack {
                                TextField("Add a bio", text: $bio, axis: .vertical)
                                    .foregroundColor(.primary)
                                    .padding()
                                    .focused($isInputActive)
                                    .toolbar {
                                        ToolbarItemGroup(placement: .keyboard) {
                                            Spacer()
                                            
                                            Button("Done") {
                                                isInputActive = false
                                            }
                                        }
                                    }
                            }
                        }
                        
                        Button {
                            openMaps()
                        } label: {
                            Map(coordinateRegion: $region)
                                .frame(width: 420, height: 180)
                                .border(.black)
                                .cornerRadius(8)
                        }
                        
                        Divider()
                            .frame(height: 1)
                            .overlay(.primary)
                            .padding(.top)
                        
                        HStack {
                            //                        Globe symbol
                            Link(destination: URL(string: "https://www.eatdimestore.com")!, label: {
                                Image(systemName: "network")
                                    .resizable()
                                    .frame(width: 70, height: 70)
                                    .foregroundColor(.primary)
                                    .padding()
                            })
                            //                        Share symbol
                            ShareLink(item: /*@START_MENU_TOKEN@*/URL(string: "https://developer.apple.com/xcode/swiftui")!/*@END_MENU_TOKEN@*/)
                                .frame(width: 175, height: 70)
                                .foregroundColor(.primary)
                        }         .padding(.top)
                        
                        Divider()
                            .frame(height: 1)
                            .overlay(.primary)
                            .padding(.top)
                        
                        Spacer()
                        
                        
                        //                        ZStack {
                        //                            RoundedRectangle(cornerRadius: 3)
                        //                                .fill((Color(red: 0.211, green: 0.138, blue: 0.095)))
                        //                                .frame(width: 420, height: 150)
                        //
                        ////                            VStack {
                        ////                                Text("Leave a review!!")
                        ////                                    .foregroundColor(.white)
                        ////                                TextField("", text: $reviews, axis: .vertical)
                        ////                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                        ////                                    .padding()
                        ////                            }
                        //                        }
                    }
                }
                //                .accessibilityAddTraits(.isHeader)
                //                    .navigationTitle($title)
                //                    .navigationBarTitleDisplayMode(.inline)
                //                    .toolbar {
                //                        if title.isEmpty || title == " " {
                //                            ToolbarItem(placement: .principal) {
                //                                Text("Add name here")
                //                                    .navigationTitle($title)
                //                                    .navigationBarTitleDisplayMode(.inline)
                //                                    .font(.largeTitle)
                //                                    .accessibilityAddTraits(.isHeader)
                //
                //                            }
                //                        }
                //                    }
            }
        }
    }
    //    Func that loads image in place of original template/picture
    func loadImage() {
        guard let selectedImage = selectedImage else { return }
        profileImage = Image(uiImage: selectedImage)
    }
    
    //    Second image loading func
    func loadImage2() {
        guard let selectedImage = selectedImage2 else { return }
        profileImage2 = Image(uiImage: selectedImage)
    }
    
    func openMaps() {
        
        let latitude = 42.3309
        let longitude = -83.0479
        
        let url = URL(string: "maps://?saddr=&daddr=\(latitude),\(longitude)")
        
        if UIApplication.shared.canOpenURL(url!) {
            UIApplication.shared.open(url!, options: [:], completionHandler: nil)
            
        }
    }
    
}

struct EditBusinessView_Previews: PreviewProvider {
    static var previews: some View {
        EditBusinessView()
    }
}


