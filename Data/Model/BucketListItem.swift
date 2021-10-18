//
//  BucketListItem.swift
//  Data
//
//  Created by Clegg, Jay on 10/18/21.
//

import Foundation

struct bucketListItem: Codable, Identifiable
{
    var id = UUID().uuidString
    var year: Int
    var goal: String
    var creature: String
}
