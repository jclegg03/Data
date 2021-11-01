//
//  DataView.swift
//  Data
//
//  Created by Clegg, Jay on 10/12/21.
//

import SwiftUI

struct DataView: View
{
    @ObservedObject var bucketStore: BucketStore = BucketStore(buckets: loadJSON(from: "bucket2021") as! [BucketListItem])
    @ObservedObject var electionStore: ElectionStore = ElectionStore(electionData: loadJSON(from: "PresidentialPolls") as! [ElectionDatum])
    @ObservedObject var registrationStore: RegistrationStore = RegistrationStore(voterRegistrationData: loadJSON(from: "VoterRegistration") as! [VoterRegistration])
    
    var body: some View
    {
        NavigationView
        {
            List
            {
                Section(header: Text("Bucket Lists"))
                {
                    ForEach(bucketStore.buckets)
                    {
                        bucket in
                    
                        BucketRowView(currentBucket: bucket, icon: generateRandomEmoji(of: "greek"))
                    }
                }
                Section(header: Text("Election Polls"))
                {
                    ForEach(electionStore.electionData.indices)
                    {
                        index in
                        
                        
                    }
                }
                Section(header: Text("Voter Registration"))
                {
                    ForEach(registrationStore.voterRegistrationData.indices)
                    {
                        index in
                        
                        
                    }
                }
            }
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
