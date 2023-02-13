//
//  BusinessView.swift
//  nopalesapp
//
//  Created by Abe Molina on 2/6/23.
//
import MapKit
import SwiftUI

struct BusinessView: View {
    
    var eggShell = #colorLiteral(red: 0.9302913547, green: 0.9253246188, blue: 0.916793704, alpha: 1)
    @State private var region =  MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 42.3309, longitude: -83.0479), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    
    var body: some View {
        
        ZStack {
            
            Color(eggShell)
                .ignoresSafeArea()
            
            NavigationStack {
                
                ScrollView {
                    
                    //                All business info and pictures
                    VStack {
                        
                        Spacer()
                        Image("dime")
                            .resizable()
                            .frame(width: 420, height: 800)
                        
                        HStack {
                            Image("Rest2")
                                .frame(width: 210)
                                .padding()
                            Text("Dime store is a store that sells store things for stores that support stores inside of stores, these stores pride themsevles designing their stores with dimes as it represents them as a dime store that supports stores that support outside stores outside of stores inside of bigger stores to store things in storage. ")
                        }
                        
                        //                    Map View under all business information
                        Map(coordinateRegion: $region)
                            .frame(width: 420, height: 180)
                            .border(.black)
                            .cornerRadius(8)
                        
                        Divider()
                            .frame(height: 1)
                            .overlay(.black)
                        
                        //                    Hyperlinks under map in an HStack
                        HStack {
                            //                        Globe symbol
                            Link(destination: URL(string: "https://www.eatdimestore.com")!, label: {
                                Image(systemName: "network")
                                    .resizable()
                                    .frame(width: 70, height: 70)
                                    .foregroundColor(.black)
                                    .padding()
                            })
                            //                        Share symbol
                            ShareLink(item: /*@START_MENU_TOKEN@*/URL(string: "https://developer.apple.com/xcode/swiftui")!/*@END_MENU_TOKEN@*/)
                                .frame(width: 175, height: 70)
                                .foregroundColor(.black)
                        }
                        
                        Divider()
                            .frame(height: 1)
                            .overlay(.black)
                        
                    }
                    
                    //                    Navigation Title
                    
                }.navigationBarTitle("On The Block", displayMode: .inline)
                    .accessibilityAddTraits(.isHeader)
                    .toolbar {
                        ToolbarItem(placement: .principal) {
                            Text("Dime Store")
                                .font(.largeTitle)
                                .accessibilityAddTraits(.isHeader)
                        }
                    }
            }
        }
    }
}
struct BusinessView_Previews: PreviewProvider {
    static var previews: some View {
        BusinessView()
    }
}
