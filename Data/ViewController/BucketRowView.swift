//
//  BucketRowView.swift
//  Data
//
//  Created by Clegg, Jay on 10/20/21.
//

import SwiftUI

struct BucketRowView: View
{
    var currentBucket : BucketListItem
    var icon : String
    
    var body: some View
    {
        NavigationLink(destination: BucketDetailView(currentBucketlistItem: currentBucket, emoji: icon))
        {
        HStack
            {
                Text(icon)
                Spacer()
                Text(currentBucket.creature)
            }
        }
    }
}

struct BucketRowView_Previews: PreviewProvider
{
    static var previews: some View
    {
        BucketRowView(currentBucket: demoItem, icon: "😈")
    }
}
