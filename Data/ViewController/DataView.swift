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
            BucketRowView()
            BucketRowView()
            BucketRowView()
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
