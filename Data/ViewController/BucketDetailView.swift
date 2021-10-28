//
//  BucketDetailView.swift
//  Data
//
//  Created by Clegg, Jay on 10/18/21.
//

import SwiftUI

struct BucketDetailView: View
{
    var currentBucketlistItem : BucketListItem
    let emoji : String
    
    var body: some View
    {
        ZStack
        {
            Color.green.edgesIgnoringSafeArea(.all)
            Image("goodBucket")
            VStack
            {
                Text("Creature: \(currentBucketlistItem.creature)")
                EmojiLogo(emoji: emoji)
                Text("Goal: \(currentBucketlistItem.goal)")
                Text("Year: \(currentBucketlistItem.year)")
            }
        }
    }
}

struct BucketDetailView_Previews: PreviewProvider
{
    static var previews: some View
    {
        BucketDetailView(currentBucketlistItem: demoItem, emoji: "💩")
    }
}
