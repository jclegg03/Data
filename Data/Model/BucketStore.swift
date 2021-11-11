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
        self.buckets = buckets
    }
}
