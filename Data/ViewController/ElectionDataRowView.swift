//
//  ElectionDataRowView.swift
//  Data
//
//  Created by Clegg, Jay on 11/1/21.
//

import SwiftUI

struct ElectionDataRowView: View
{
    var currentElectionDatum: ElectionDatum
    
    var body: some View
    {
        VStack
        {
            Text("State: \(currentElectionDatum.state)")
            Text("\(currentElectionDatum.candidateName)")
            Text("Influence: \(currentElectionDatum.influence)")
            Text("Sample Size: \(currentElectionDatum.sampleSize)")
        }
    }
}

struct ElectionDataRowView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ElectionDataRowView(currentElectionDatum: secondDemo)
    }
}
