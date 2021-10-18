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
                Text("1")
                Text("2")
                Text("3")
                Text("4")
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
