//
//  BucketStore.swift
//  Data
//
//  Created by Clegg, Jay on 10/28/21.
//

import Combine

class BucketStore : ObservableObject
{
    @Published var buckets : [BucketListItem]
    
    init (buckets : [BucketListItem])
    {
        self.buckets = buckets
    }
}
