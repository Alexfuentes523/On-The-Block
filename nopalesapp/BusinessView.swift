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
          
            ScrollView {
                
                VStack {
                    Text("Dime Store")
                        .font(.system(size: 40))
                        .padding()
                    
                    Image("dime")
                        .resizable()
                        .frame(width: 401, height: 800)
                    
                    HStack {
                        Image("Rest2")
                            .padding()
                        Text("Here at Nickel Store we treat every customer and employee with respect and encourage a positive envioroment. We are a team of 12 and are always looking for new ways to help impact the community through good eats!! ")
                    }
                    
                    Map(coordinateRegion: $region)
                        .frame(width: 430, height: 180)
                        .border(.black)

                    Link(destination: URL(string: "https://www.eatdimestore.com")!, label: {
                        Image(systemName: "network")
                            .resizable()
                            .frame(width: 70, height: 70)
                            .foregroundColor(.black)
                    })
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
