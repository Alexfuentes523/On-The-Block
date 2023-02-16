//
//  PinterestGrid.swift
//  nopalesapp
//
//  Created by Cameron Johnson on 2/7/23.
//

import SwiftUI

struct CamGridItem: Identifiable {
    let id = UUID()
    let height: CGFloat
    let imgString: String
}



struct StoreTile: View {
    
    
    @State var selected: Store?
    @State var store:Store
    let stores = Store.dummyStores
    
    // let store: Store
    
    var body: some View {
        
        ForEach(stores) { store in
            
            
            
            
            
            HStack {
                
                
                NavigationLink {
                    
                    BusinessView(store: store)
                }
            label: {
                
                VStack {
                    
                    Image(store.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width:50,height:250)
                    
                        .overlay(alignment: .bottom) {
                            HStack {
                                ForEach(0..<store.numberOfStars, id: \.self) {_ in
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.yellow)
                                }
                            }
                        }
                    Text(store.storeName)
                    
                }
                
                
            }
                
                
            }
        }
    }
}
    


struct CoryGrid: View {
    let stores = Store.dummyStores
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    var body: some View {
        LazyVGrid(columns: columns, spacing: 0) {
            ForEach(stores) { store in
                
                
                StoreTile(store: store)
            }
        }
    }
}

//struct PinterestGrid: View {
//
//    struct Column: Identifiable {
//        let id = UUID() // Universally unique indentifier
//        var gridItems = [GridItem]()
//    }
//
//    let columns: [Column]
//
//    let spacing: CGFloat
//    let horizontalPadding: CGFloat
//
//    // now we have to calcuate the grid layout so that it is more dynamic
//
//    init(gridItems: [GridItem], numOfColumns: Int, spacing:CGFloat = 2,
//         horizontalPadding: CGFloat = 5) {
//        self.spacing = spacing
//        self.horizontalPadding = horizontalPadding
//
//        var columns = [Column]()
//        for _ in 0 ..< numOfColumns {
//            columns.append(Column())
//        }
//        // this stores the current height of each column, so that we can find out which one is the smallest
//        var columnsHeight = Array<CGFloat>(repeating: 0, count: numOfColumns)
//
//        for gridItem in gridItems {
//            var smallestColumnIndex = 0
//            var smallestHeight = columnsHeight.first!
//            for i in 1 ..< columnsHeight.count {
//                let curHeight = columnsHeight[i]
//                if curHeight < smallestHeight {
//                    smallestHeight = curHeight
//                    smallestColumnIndex = i
//                }
//            }
//
//
//            columns[smallestColumnIndex].gridItems.append(gridItem)
//            columnsHeight[smallestColumnIndex] += gridItem.height
//        }
//
//        self.columns = columns
//    }
//
//    var body: some View {
//        HStack(alignment: .top, spacing: spacing) {
//            ForEach(columns) { columns in
//                LazyVStack(spacing: spacing) {
//                    ForEach(columns.gridItems) { gridItem in
//
//                        getItemView(gridItem: gridItem)
//
//
//                    }
//                }
//
//            }
//
//        }
//        .padding(.horizontal, horizontalPadding)
//    }
//    // Reads the images to figure out where they should go in the code
//    func getItemView(gridItem: GridItem) -> some View {
//        ZStack{
//            GeometryReader { reader in
//                Image(gridItem.imgString)
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: reader.size.width,
//                           height: reader.size.height,
//                           alignment: .center)
//
//            }
//
//        }
//        // Fixes the sizes of the images
//
//        .frame(height: gridItem.height)
//        .frame(maxWidth: .infinity)
//        .clipShape(RoundedRectangle(cornerRadius: 13))
//
//    }
//}

//struct PinterestGrid_Previews: PreviewProvider {
//    static var previews: some View {
//        PinterestGrid(gridItems: [
//            GridItem(height:450, imgString: "BLM Barber"),
//            GridItem(height:250, imgString: "detroitvseverybody"),
//            GridItem(height:200, imgString: "dime"),
//            GridItem(height:220, imgString: "thecity"),
//            GridItem(height:450, imgString: "warehouse"),
//            GridItem(height:450, imgString: "women"),
//            GridItem(height:450, imgString: "storefront1"),
//            GridItem(height:250, imgString: "storefront2"),
//            GridItem(height:200, imgString: "storefront3"),
//            GridItem(height:220, imgString: "storefront4"),
//            GridItem(height:450, imgString: "storefront5"),
//            GridItem(height:450, imgString: "storefront6")
//        ], numOfColumns: 2)
//    }
//}

struct CoryGrid_Previews: PreviewProvider {
    static var previews: some View {
        CoryGrid()
    }
}
