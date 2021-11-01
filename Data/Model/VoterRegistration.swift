//
//  VoterRegistration.swift
//  Data
//
//  Created by Clegg, Jay on 11/1/21.
//

import Foundation

struct VoterRegistration: Codable//, Identifiable
{
  //  var id = UUID().uuidString
    var state: String
    var year: Int
    var month: String
    var newVoters: Int
}
