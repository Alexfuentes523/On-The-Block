//
//  PinterestGrid.swift
//  nopalesapp
//
//  Created by Cameron Johnson on 2/7/23.
//

import SwiftUI

struct GridItem: Identifiable {
    let id = UUID()
    let height: CGFloat
    let imgString: String
}

struct PinterestGrid: View {
    
    struct Column: Identifiable {
        let id = UUID()
        var gridItems = [GridItem]()
    }
    
    let columns: [Column]
    
    let spacing: CGFloat
    let horizontalPadding: CGFloat
    
    // now we have to calcuate the grid layout so that it is more dynamic
    
    init(gridItems: [GridItem], numOfColumns: Int, spacing:CGFloat = 20,
         horizontalPadding: CGFloat = 20) {
        self.spacing = spacing
        self.horizontalPadding = horizontalPadding
        
        var columns = [Column]()
        for _ in 0 ..< numOfColumns {
            columns.append(Column())
        }
        // this stores the current height of each colum, so that we can find out which one is the smallest
        var columnsHeight = Array<CGFloat>(repeating: 0, count: numOfColumns)
        
        for gridItem in gridItems {
            var smallestColumnIndex = 0
            var smallestHeight = columnsHeight.first!
            for i in 1 ..< columnsHeight.count {
                let curHeight = columnsHeight[i]
                if curHeight < smallestHeight {
                    smallestHeight = curHeight
                    smallestColumnIndex = i
                }
            }
            
            
            columns[smallestColumnIndex].gridItems.append(gridItem)
            columnsHeight[smallestColumnIndex] += gridItem.height
        }
        
        self.columns = columns
    }
    
    var body: some View {
        HStack(alignment: .top, spacing: spacing) {
            ForEach(columns) { columns in
                LazyVStack(spacing: spacing) {
                    ForEach(columns.gridItems) { gridItem in
                        
                        getItemView(gridItem: gridItem)
                        
//                        Rectangle()
//                            .foregroundColor(.blue)
//                            .frame(height: gridItem.height)
//                            .overlay(
//                                Text(gridItem.title)
//                                    .font(.system(size: 30, weight: .bold))
                            
                        
                    }
                }
                
            }
            
        }
        .padding(.horizontal, horizontalPadding)
    }
    
    func getItemView(gridItem: GridItem) -> some View {
        ZStack{
            GeometryReader { reader in
                Image(gridItem.imgString)
                    .resizable()
                    .scaledToFit()
                    .frame(width: reader.size.width,
                           height: reader.size.height,
                           alignment: .center)
            }
            
        }
        .frame(height: gridItem.height)
        .frame(maxWidth: .infinity)
        .clipShape(RoundedRectangle(cornerRadius: 13))
    }
    
}

struct PinterestGrid_Previews: PreviewProvider {
    static var previews: some View {
        PinterestGrid(gridItems: [
            GridItem(height:450, imgString: "BLM Barber"),
            GridItem(height:250, imgString: "detroitvseverybody"),
            GridItem(height:200, imgString: "dime"),
            GridItem(height:120, imgString: "thecity"),
            GridItem(height:450, imgString: "warehouse"),
            GridItem(height:450, imgString: "women"),
        ], numOfColumns: 2)
    }
}

