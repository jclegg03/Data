//
//  BucketDetailView.swift
//  Data
//
//  Created by Clegg, Jay on 10/18/21.
//

import SwiftUI

struct BucketDetailView: View
{
    var body: some View
    {
        ZStack
        {
            Color.purple.edgesIgnoringSafeArea(.all)
            VStack
            {
                Text("text 1")
                Text("text 2")
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
        BucketDetailView()
    }
}
