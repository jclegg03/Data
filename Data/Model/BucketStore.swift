//
//  BucketStore.swift
//  Data
//
//  Created by Clegg, Jay on 10/28/21.
//

import Combine
import Foundation

class BucketStore : ObservableObject
{
    @Published var buckets : [BucketListItem]
    {
        didSet
        {
            let encoder = JSONEncoder()
            if let encodedBuckets = try? encoder.encode(buckets)
            {
                UserDefaults.standard.set(encodedBuckets, forKey: "Saved Buckets")
            }
        }
    }
    
    init (buckets : [BucketListItem])
    {
        if let storedBuckets = UserDefaults.standard.data(forKey: "Saved Buckets")
        {
            let decoder = JSONDecoder()
            if let savedBuckets = try? decoder.decode([BucketListItem].self, from: storedBuckets)
            {
                if(savedBuckets.count != 0)
                {
                    self.buckets = savedBuckets
                    return //Exits the init with the saved data iff there is data stored
                }
            }
        }
        
        self.buckets = buckets //Exits the init with the JSON from the loadJSON method
    }
}
    