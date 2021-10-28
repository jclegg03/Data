//
//  DataView.swift
//  Data
//
//  Created by Clegg, Jay on 10/12/21.
//

import SwiftUI

struct DataView: View
{
    @ObservedObject var bucketStore : BucketStore = BucketStore(buckets: loadJSON(from: "bucket2021"))
    
    var body: some View
    {
        NavigationView
        {
            List
            {
                ForEach(bucketStore.buckets)
                {
                    bucket in
                    
                    BucketRowView(currentBucket: bucket, icon: generateRandomEmoji(of: ""))
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        DataView()
    }
}
