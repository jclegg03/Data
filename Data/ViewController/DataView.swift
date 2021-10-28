//
//  DataView.swift
//  Data
//
//  Created by Clegg, Jay on 10/12/21.
//

import SwiftUI

struct DataView: View
{
    var body: some View
    {
        List
        {
            BucketRowView(currentBucket: demoItem, icon: generateRandomEmoji(of: ""))
            BucketRowView(currentBucket: demoItem, icon: generateRandomEmoji(of: "face"))
            BucketRowView(currentBucket: demoItem, icon: generateRandomEmoji(of: "greek"))
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
