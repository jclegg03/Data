//
//  ElectionStore.swift
//  Data
//
//  Created by Clegg, Jay on 11/1/21.
//

import Combine

class ElectionStore: ObservableObject
{
    @Published var electionData : [ElectionDatum]
    
    init(electionData: [ElectionDatum])
    {
        self.electionData = electionData
    }
}
