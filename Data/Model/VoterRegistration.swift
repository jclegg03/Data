//
//  VoterRegistration.swift
//  Data
//
//  Created by Clegg, Jay on 11/1/21.
//

import Foundation

struct VoterRegistration: Codable, Identifiable
{
    var id = UUID().uuidString
    var Jurisdiction: String
    var Year: Int
    var Month: String
    var NewRegisteredVoters: Int
}
