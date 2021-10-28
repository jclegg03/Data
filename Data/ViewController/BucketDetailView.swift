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
                Text("text 1")
                EmojiLogo(emoji: emoji)
                Text("text 3")
                Text("text 4")
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
