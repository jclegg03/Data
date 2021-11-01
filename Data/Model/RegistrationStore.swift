//
//  RegistrationStore.swift
//  Data
//
//  Created by Clegg, Jay on 11/1/21.
//

import Combine

class RegistrationStore: ObservableObject
{
    @Published var voterRegistrationData: [VoterRegistration]
    
    init(voterRegistrationData: [VoterRegistration])
    {
        self.voterRegistrationData = voterRegistrationData
    }
}
