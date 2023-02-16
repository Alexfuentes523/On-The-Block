//
//  StoreModel.swift
//  nopalesapp
//
//  Created by Cameron Johnson on 2/14/23.
//

import Foundation

struct Store: Identifiable {
    let id = UUID()
    let imageName: String
    let storeName: String
    let numberOfStars: Int
    
    static let dummyStores = [
        Store(imageName: "entrance", storeName: "Fanus", numberOfStars: 3),
        Store(imageName: "women", storeName: "Aiya Makeup", numberOfStars: 4),
        Store(imageName: "dime", storeName: "dimestore", numberOfStars: 3),
        Store(imageName: "thecity", storeName: "The City", numberOfStars: 4),
        Store(imageName: "warehouse", storeName: "Stussy Detriot", numberOfStars: 5),
        Store(imageName: "nothingstopsdet", storeName: "Midnight Detriot", numberOfStars: 4),
        Store(imageName: "coffeehouse", storeName: "Coffee House", numberOfStars: 5),
        Store(imageName: "storefront3", storeName: "The Strip", numberOfStars: 5),
//        Store(imageName: "storefront4", storeName: "Cologne & Cotton", numberOfStars: 5),
//        Store(imageName: "storefront5", storeName: "Vault of Midnight", numberOfStars: 5),
//        Store(imageName: "storefront6", storeName: "Katy's", numberOfStars: 5)
        
    ]
    
    static let example =  Store(imageName: "entrance", storeName: "Fanus", numberOfStars: 3)
}


