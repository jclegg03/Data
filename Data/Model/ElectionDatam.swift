//
//  ElectionDatam.swift
//  Data
//
//  Created by Clegg, Jay on 10/28/21.
//

import Foundation

struct ElectionDatum: Codable, Identifiable
{
    var id = UUID().uuidString
    var state: String
    var cantidateName: String
    var sampleSize: Int
    var weight: Double
    var influence: Double
    var percent: Double
    var houseAdjustedPercent: Double
    var trendAndHouseAdjustedPercent: Double
}
