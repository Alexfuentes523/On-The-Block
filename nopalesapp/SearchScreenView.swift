//
//  SearchScreenView.swift
//  nopalesapp
//
//  Created by Duke Holsing on 2/20/23.
//

import SwiftUI

//
//  ContentView.swift
//  SearchBar
//
//  Created by Duke Holsing on 2/16/23.
//

import SwiftUI

struct ImageOverlay: View{
    let label: String
    
    var body: some View{
        ZStack{
            Text(label)
                .font(.body)
                .padding(5)
                .foregroundColor(.white)
            
        }
        .background(Color.black)
        .opacity(0.7)
        .cornerRadius(12)
        .padding(10)
        
    }
}

struct EEER: View {
    var body: some View {
        
        ZStack{
            //            Text("Dime Store")
            //                .font(.body)
            //                .padding(5)
            //                .foregroundColor(.white)
            //
            VStack{
                
                Search()
                
                Image("Dime Store")
                
                    .resizable()
                    .scaledToFit()
                    .padding(8)
                    .overlay (ImageOverlay(label: "Dime Store"), alignment: .bottomLeading)
                
                //                Text("Dime Store")
                //                    .font(.body)
                //                    .padding(5)
                //                    .foregroundColor(.white)
                //                    .overlay
                //                    .padding([.vertical], -670)
                //                .offset(y:-475)
                                Image("Spectacles")
                                    .resizable()
                                    .scaledToFit()
                                    .padding(8)
                                    .overlay (ImageOverlay(label: "Spectacles"), alignment: .bottomLeading)
                //                    .padding([.vertical], -550)
                           
                Spacer()

                
            }
        }
        
    }
    
}

struct EEER_Previews: PreviewProvider {
    static var previews: some View {
        EEER()
    }
}
struct Search: View {
    
    @State var txt = ""
    
    var body: some View {
        
        //ZStack {
           // Color("Color").edgesIgnoringSafeArea(.all)
            SearchView(data: data, txt: $txt)
        //}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}

struct SearchView : View {
    
    var data : [String]
    @Binding var txt : String
    
    var body: some View {
        
        VStack(spacing :0) {
            ZStack {
                HStack {
                    TextField("Search", text: $txt)
                        .padding(.trailing, 75)
                }.padding()
                    .background(Color.white)
                
                if self.txt != "" {
                    HStack {
                        
                        Spacer()
                        
                        Button(action: {
                            self.txt = ""
                        }) {
                            Text("Cancel")
                        }.foregroundColor(.black)
                    }.padding()
                }
            }
            
            if self.txt != "" {
                List(self.data.filter{$0.lowercased().contains(self.txt.lowercased())},id: \.self) { rs in
                    Text(rs)
                }//.frame(height: 500).listStyle(PlainListStyle())
            }
            
           // Spacer()
        }.padding()
    }
}
