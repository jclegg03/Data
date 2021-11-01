//
//  RegistrationRowView.swift
//  Data
//
//  Created by Clegg, Jay on 11/1/21.
//

import SwiftUI

struct RegistrationRowView: View
{
    var voterRegistration: VoterRegistration
    var body: some View
    {
        VStack
        {
            HStack
            {
                Text("State: \(voterRegistration.state)")
                Text("\(voterRegistration.newVoters)")
            }
            Text("\(voterRegistration.month) \(voterRegistration.year)")
        }
    }
}

struct RegistrationRowView_Previews: PreviewProvider
{
    static var previews: some View
    {
        RegistrationRowView(voterRegistration: thirdDemo)
    }
}
