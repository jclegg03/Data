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
    var cantidate_name: String
    var samplesize: Int
    var weight: Double
    var influence: Double
    var pct: Double
    var house_adjusted_pct: Double
    var trend_and_house_adjusted_pct: Double
}
