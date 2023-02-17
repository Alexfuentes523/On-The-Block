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
    let storeBio: String
    
    static let dummyStores = [
        Store(imageName: "entrance", storeName: "Fanus", numberOfStars: 3, storeBio: "We're a small shop right off of woodward. Our popular products are the novelty items and the ice coffee"),
        Store(imageName: "women", storeName: "Aiya Makeup", numberOfStars: 4, storeBio: "Hey guy's I'm Aiya I run a retail and makeup store. Everything is homemade and organic. I started this business becuase of my love for creativity and this is the perfect way to express it."),
        Store(imageName: "dime", storeName: "Dime Store", numberOfStars: 3, storeBio: "This store is a store that sells store things for stores that support stores inside of stores, these stores pride themsevles designing their stores with traditional store architecture as it represents them as a dime store that supports stores that support outside stores outside of stores inside of bigger stores to store things in storage."),
        Store(imageName: "thecity", storeName: "The City Shop", numberOfStars: 4, storeBio: "If you want to rep the city pop into the shop and grab some pieces to add to the collection. We have some clothes from some small businesses to show our city love. "),
        Store(imageName: "warehouse", storeName: "Stussy Detriot", numberOfStars: 5, storeBio: "Stussy Detriot is a clothing brand that is trying to make a name in the city. Come in for a chance to win a free sweatshirt and look at some of the cool stuff we have in stock for the season"),
        Store(imageName: "nothingstopsdet", storeName: "Midnight Detriot", numberOfStars: 4, storeBio: "What's up Detriot we are a night club in the alley near mootz we have live music and make crazy drinks for our guest every night you'll never have the same experience twice. Come check us out!"),
        Store(imageName: "coffeehouse", storeName: "Coffee House", numberOfStars: 5, storeBio: "Ever want the best cup of coffee in the world and the vibes to match it come into the coffee shop and try our specialty beans and our pleasent small plates"),
        Store(imageName: "storefront3", storeName: "The Strip", numberOfStars: 5, storeBio: "Need a place where you need more than one thing but can't find in all in one spot. We're the place for you we are a group of 8 shops on the block."),
//        Store(imageName: "storefront4", storeName: "Cologne & Cotton", numberOfStars: 5),
//        Store(imageName: "storefront5", storeName: "Vault of Midnight", numberOfStars: 5),
//        Store(imageName: "storefront6", storeName: "Katy's", numberOfStars: 5)
        
    ]
    
    static let example =  Store(imageName: "entrance", storeName: "Fanus", numberOfStars: 3, storeBio: "")
}


